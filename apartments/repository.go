package apartments

import (
	"BackendAirbnb/resources"
	"BackendAirbnb/resources/database"
	"errors"
	"fmt"
	"github.com/lithammer/shortuuid"
	"net/http"
)

type HttpRepository struct {
	repoDB database.Repository
}

func (h HttpRepository) GetApartmentInfo(aptId string) (resources.ApartmentInfo, int, error) {
	apartmentInfo := resources.ApartmentInfo{}
	parameters := make([]interface{}, 1)
	parameters[0] = aptId
	err := h.repoDB.Raw(&apartmentInfo, "SELECT a.*, COALESCE(array_agg(i.url) FILTER (WHERE i.url IS NOT NULL), '{}') AS imagenes FROM apartments a LEFT JOIN apartment_images i ON a.id = i.apartment_id  where a.id = ? GROUP BY a.id;", parameters, shortuuid.New())
	if err != nil {
		return apartmentInfo, http.StatusInternalServerError, err
	}
	if apartmentInfo.Description == "" {
		return apartmentInfo, http.StatusNotFound, errors.New("apartment not found on DB")
	}
	return apartmentInfo, http.StatusOK, nil
}

func (h HttpRepository) GetApartmentList() ([]resources.Apartment, int, error) {
	apartmentList := []resources.Apartment{}
	h.repoDB.Get(&apartmentList, shortuuid.New())
	if len(apartmentList) == 0 {
		return nil, http.StatusNotFound, errors.New("apartments not found on DB")
	}
	return apartmentList, http.StatusOK, nil
}

func (h HttpRepository) GetApartmentsByCity(cityName string) ([]resources.Apartment, int, error) {
	apartmentList := []resources.Apartment{}
	condition := fmt.Sprintf("city = ?")
	parameters := make([]interface{}, 1)
	parameters[0] = cityName
	h.repoDB.GetByConditions(&apartmentList, condition, parameters)
	if len(apartmentList) == 0 {
		return nil, http.StatusNotFound, errors.New("apartments not found on DB")
	}
	return apartmentList, http.StatusOK, nil
}

type Repository interface {
	GetApartmentList() ([]resources.Apartment, int, error)
	GetApartmentsByCity(cityName string) ([]resources.Apartment, int, error)
	GetApartmentInfo(aptId string) (resources.ApartmentInfo, int, error)
}

func NewRepo(repoDB database.Repository) Repository {
	return HttpRepository{
		repoDB: repoDB,
	}
}
