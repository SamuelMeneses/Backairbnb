package apartments

import (
	"BackendAirbnb/resources"
)

type ServiceBase interface {
	GetApartmentsService() ([]resources.Apartment, int, error)
	GetApartmentsByCity(city string) ([]resources.Apartment, int, error)
	GetByAptIdService(aptId string) (resources.ApartmentInfo, int, error)
}

type Service struct {
	repository Repository
}

func (s Service) GetApartmentsByCity(city string) ([]resources.Apartment, int, error) {
	return s.repository.GetApartmentsByCity(city)
}

func (s Service) GetApartmentsService() ([]resources.Apartment, int, error) {
	return s.repository.GetApartmentList()
}

func (s Service) GetByAptIdService(aptId string) (resources.ApartmentInfo, int, error) {
	return s.repository.GetApartmentInfo(aptId)
}
func NewService(repository Repository) ServiceBase {
	return Service{
		repository: repository,
	}
}
