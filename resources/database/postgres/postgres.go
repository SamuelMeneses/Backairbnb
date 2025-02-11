package postgres

import (
	"BackendAirbnb/resources"
	"fmt"
	"github.com/lithammer/shortuuid"
	"github.com/sirupsen/logrus"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	gormLogger "gorm.io/gorm/logger"
	"io/ioutil"
	"log"
	"time"
)

var DB *gorm.DB

const (
	DB_HOST     = "localhost"
	DB_PORT     = "5432"
	DB_USER     = "postgres"
	DB_PASSWORD = "postgres"
	DB_NAME     = "alquiler_apartamentos"
	DB_SSLMODE  = "disable"
)

func NewPostgres() (*gorm.DB, error) {
	uuid := shortuuid.New()
	if DB != nil {
		return DB, nil
	}
	dsn := fmt.Sprintf(
		"host=%s user=%s password=%s dbname=%s port=%s sslmode=%s",
		DB_HOST,
		DB_USER,
		DB_PASSWORD,
		DB_NAME,
		DB_PORT,
		DB_SSLMODE,
	)

	log := logrus.WithField("ID", uuid)
	gormLog := SetLogger(log)
	DB, err := gorm.Open(postgres.Open(dsn), &gorm.Config{
		Logger: gormLog,
	})
	if err != nil {
		log.Error(err)
		return nil, err
	}
	sqlDB, err := DB.DB()
	if err != nil {
		log.Error(err)
		return nil, err
	}
	sqlDB.SetMaxIdleConns(2)
	sqlDB.SetMaxOpenConns(10)
	sqlDB.SetConnMaxLifetime(time.Second * 60)

	DB.Migrator().DropTable(
		&resources.User{},
		&resources.Apartment{},
		&resources.ApartmentImage{},
		&resources.Booking{},
		&resources.Payment{},
		&resources.City{},
	)

	DB.AutoMigrate(
		&resources.User{},
		&resources.Apartment{},
		&resources.ApartmentImage{},
		&resources.Booking{},
		&resources.Payment{},
		&resources.City{},
	)
	// Ejecutar seed.sql
	executeSQLFile(DB, "./resources/database/postgres/inserts.sql")

	return DB, nil
}

func SetLogger(log *logrus.Entry) gormLogger.Interface {
	return gormLogger.New(
		log.Logger,
		gormLogger.Config{
			SlowThreshold: time.Second,
			LogLevel:      gormLogger.Info,
			Colorful:      true,
		},
	)
}

func executeSQLFile(db *gorm.DB, filename string) {
	sqlFile, err := ioutil.ReadFile(filename)
	if err != nil {
		log.Fatalf("Failed to read SQL file: %v", err)
	}

	sql := string(sqlFile)
	if err := db.Exec(sql).Error; err != nil {
		log.Fatalf("Failed to execute SQL file: %v", err)
	}

	fmt.Println("Seed data inserted successfully")
}
