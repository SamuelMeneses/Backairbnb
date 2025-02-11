package login

import (
	"BackendAirbnb/resources"
	"BackendAirbnb/resources/database"
	"errors"
	"fmt"
	"net/http"
)

type HttpRepository struct {
	repoDB database.Repository
}

func (h HttpRepository) GetUserInfo(email string) (*resources.User, int, error) {
	user := new(resources.User)
	condition := fmt.Sprintf("email = ?")
	parameters := make([]interface{}, 1)
	parameters[0] = email
	h.repoDB.GetByConditions(&user, condition, parameters)
	if user.FirstName != "" {
		return user, http.StatusOK, nil
	}
	return nil, http.StatusUnauthorized, errors.New("user not found on DB")
}

type Repository interface {
	GetUserInfo(email string) (*resources.User, int, error)
}

func NewRepo(repoDB database.Repository) Repository {
	return HttpRepository{
		repoDB: repoDB,
	}
}
