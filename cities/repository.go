package cities

import (
	"BackendAirbnb/resources"
	"BackendAirbnb/resources/database"
	"errors"
	"github.com/lithammer/shortuuid"
	"net/http"
)

type HttpRepository struct {
	repoDB database.Repository
}

func (h HttpRepository) GetCities() ([]resources.City, int, error) {
	cityList := []resources.City{}
	h.repoDB.Get(&cityList, shortuuid.New())
	if len(cityList) == 0 {
		return nil, http.StatusNotFound, errors.New("cities not found on DB")
	}
	return cityList, http.StatusOK, nil
}

type Repository interface {
	GetCities() ([]resources.City, int, error)
}

func NewRepo(repoDB database.Repository) Repository {
	return HttpRepository{
		repoDB: repoDB,
	}
}
