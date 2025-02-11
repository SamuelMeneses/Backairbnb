package login

import (
	"errors"
	"net/http"
)

type loginInfo struct {
	UserEmail string `json:"user_email"`
	Password  string `json:"password"`
}

type ServiceBase interface {
	Login(loginInfo) (int, error)
}

type Service struct {
	repository Repository
}

func (s Service) Login(info loginInfo) (int, error) {
	userInfo, code, err := s.repository.GetUserInfo(info.UserEmail)
	if err != nil {
		return code, err
	}
	if userInfo == nil {
		return http.StatusUnauthorized, errors.New("user not found on DB")
	}

	if *userInfo.Password != info.Password {
		return http.StatusUnauthorized, errors.New("invalid password")
	}
	return http.StatusOK, nil
}

func NewService(repository Repository) ServiceBase {
	return Service{
		repository: repository,
	}
}
