package router

import (
	"BackendAirbnb/apartments"
	"BackendAirbnb/cities"
	"BackendAirbnb/login"
	"BackendAirbnb/resources/database"
	"net/http"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func NewRouter() *gin.Engine { //defino las rutas (endpoint)
	gin.ForceConsoleColor()
	r := gin.New()

	// Agregar middleware de CORS -- conexion con el front
	r.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"http://localhost:5173"}, // Permitir el frontend
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE"},
		AllowHeaders:     []string{"Content-Type", "Authorization"},
		AllowCredentials: true,
	}))

	api := r.Group("api/reservations")

	api.GET(
		"/health", func(ctx *gin.Context) {
			ctx.JSON(
				http.StatusOK, gin.H{
					"status": http.StatusOK,
				},
			)
		},
	)

	SetLogin(api)
	SetApartment(api)
	SetCities(api)

	return r
}

func SetCities(api *gin.RouterGroup) {
	//Init DB
	repoDB := database.GetDBInstance()
	repo := cities.NewRepo(repoDB)
	service := cities.NewService(repo)
	handler := cities.Handler(service)

	api.GET("/cities", []gin.HandlerFunc{handler}...)
}

func SetLogin(api *gin.RouterGroup) {
	//Init DB
	repoDB := database.GetDBInstance()
	repoLogin := login.NewRepo(repoDB)
	serviceLogin := login.NewService(repoLogin)
	loginHandler := login.LoginHandler(serviceLogin)

	api.POST("/login", []gin.HandlerFunc{loginHandler}...)
}

func SetApartment(api *gin.RouterGroup) {
	//Init DB
	repoDB := database.GetDBInstance()
	repo := apartments.NewRepo(repoDB)
	service := apartments.NewService(repo)
	handler := apartments.Handler(service)
	GetByCityHandler := apartments.GetByCity(service)
	GetAptById := apartments.GetByAptId(service)

	api.GET("/apartments", []gin.HandlerFunc{handler}...)
	api.GET("/apartments-by-city/:city_id", []gin.HandlerFunc{GetByCityHandler}...)
	api.GET("/apartment-by-id/:apt_id", []gin.HandlerFunc{GetAptById}...)
}
