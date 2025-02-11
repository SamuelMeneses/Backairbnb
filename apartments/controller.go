package apartments

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func Handler(service ServiceBase) gin.HandlerFunc {
	return func(ctx *gin.Context) {
		list, code, err := service.GetApartmentsService()
		if err != nil {
			ctx.JSON(code, gin.H{"error": err.Error()})
			return
		}

		ctx.JSON(http.StatusOK, list)
	}
}

func GetByCity(service ServiceBase) gin.HandlerFunc {
	return func(ctx *gin.Context) {
		cityName := ctx.Param("city_id")
		list, code, err := service.GetApartmentsByCity(cityName)
		if err != nil {
			ctx.JSON(code, gin.H{"error": err.Error()})
			return
		}

		ctx.JSON(http.StatusOK, list)
	}
}

func GetByAptId(service ServiceBase) gin.HandlerFunc {
	return func(ctx *gin.Context) {
		aptId := ctx.Param("apt_id")
		aptInfo, code, err := service.GetByAptIdService(aptId)
		if err != nil {
			ctx.JSON(code, gin.H{"error": err.Error()})
			return
		}

		ctx.JSON(http.StatusOK, aptInfo)
	}
}
