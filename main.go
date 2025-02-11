package main

import (
	"BackendAirbnb/router"
	"github.com/lithammer/shortuuid"
	"github.com/sirupsen/logrus"
)

func main() {
	logMain := logrus.WithField("Main", shortuuid.New())
	routerOps := router.NewRouter() // define la ruta
	logMain.Info("Listening on port 8080...")
	if err := routerOps.Run(":8080"); err != nil {
		logMain.Fatal("Error starting server: ", err)
	}
}
