package cities

import (
	"BackendAirbnb/resources"
)

type ServiceBase interface {
	GetCityList() ([]resources.City, int, error)
}

type Service struct {
	repository Repository
}

func (s Service) GetCityList() ([]resources.City, int, error) {
	return s.repository.GetCities()
}

func NewService(repository Repository) ServiceBase {
	return Service{
		repository: repository,
	}
}
