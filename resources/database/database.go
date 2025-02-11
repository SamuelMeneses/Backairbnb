package database

import (
	"gorm.io/gorm"
)

type Repository interface {
	Get(data interface{}, uuid string)
	Save(value interface{}, uuid string) error
	GetByConditions(entities interface{}, condition string, parameters []interface{})
	GetWithPrimaryKey(value interface{}, uuid string, where interface{}) error
	Raw(entity interface{}, query string, params []interface{}, uuid string) error
	TableExists(tableName string) bool
}

type Connector interface {
	Connect() (*gorm.DB, error)
	NewRepo() Repository
}
