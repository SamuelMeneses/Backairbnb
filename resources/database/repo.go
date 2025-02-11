package database

import (
	"BackendAirbnb/resources/database/postgres"
	"errors"
	"fmt"
	"github.com/lithammer/shortuuid"
	"github.com/sirupsen/logrus"
	"gorm.io/gorm"
	"sync"
)

var logRepo = logrus.WithField("repoDB", shortuuid.New())

const errDB = "no Connection To database repo.db is nil"

// Repository to get and save to database
type Repo struct {
	db *gorm.DB
}

// Get all the data of the structure tha is in DB
func (repo Repo) Get(entities interface{}, _ string) {
	if repo.db != nil {
		repo.db.Find(entities)
	}
}

// Save a structure in DB
func (repo Repo) Save(entity interface{}, uuid string) error {
	if repo.db != nil {
		gormLog := postgres.SetLogger(logRepo)
		return repo.db.Session(&gorm.Session{Logger: gormLog}).Save(entity).Error
	}
	return errors.New(errDB)
}

// GetByConditions gets all the data of the structure that have a match with all conditions
func (repo Repo) GetByConditions(entities interface{}, condition string, parameters []interface{}) {
	if repo.db != nil {
		repo.db.Where(condition, parameters...).Find(entities)
	}
}

func (repo Repo) Exec(query string, params []interface{}, uuid string) error {
	if repo.db != nil {
		gormLog := postgres.SetLogger(logRepo)
		return repo.db.Session(&gorm.Session{Logger: gormLog}).Exec(query, params...).Error
	}
	return nil
}

func (repo Repo) TableExists(tableName string) bool {
	var exists bool
	query := fmt.Sprintf("SELECT EXISTS (SELECT FROM information_schema.tables WHERE table_name = '%s')", tableName)
	repo.db.Raw(query).Scan(&exists)
	return exists
}

// GetWithPrimaryKey gets all the data of the structure that have a match with specific value
func (repo Repo) GetWithPrimaryKey(entity interface{}, uuid string, where interface{}) error {
	if repo.db != nil {
		gormLog := postgres.SetLogger(logRepo)
		return repo.db.Session(&gorm.Session{Logger: gormLog}).Find(entity, where).Error
	}
	return errors.New(errDB)
}

func (repo Repo) Raw(entity interface{}, query string, params []interface{}, uuid string) error {
	if repo.db != nil {
		gormLog := postgres.SetLogger(logRepo)
		return repo.db.Session(&gorm.Session{Logger: gormLog}).Raw(query, params...).Scan(entity).Error
	}
	return errors.New(errDB)
}

type singletonDB struct {
	conn Repository
	once sync.Once
}

var instance *singletonDB

// GetDBInstance returns the singleton instance of the GORM database connection.
func GetDBInstance() Repository {
	if instance == nil {
		instance = &singletonDB{}
	}

	instance.once.Do(
		func() {
			var err error
			instance.conn, err = NewRepo()
			if err != nil {
				panic("Failed to connect to the database: " + err.Error())
			}
		},
	)

	return instance.conn
}

func NewRepo() (Repository, error) {
	db, err := postgres.NewPostgres()
	if err != nil {
		return nil, errors.New(errDB)
	}
	return Repo{db: db}, nil
}
