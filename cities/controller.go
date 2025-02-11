package cities

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func Handler(service ServiceBase) gin.HandlerFunc {
	return func(ctx *gin.Context) {
		list, code, err := service.GetCityList()
		if err != nil {
			ctx.JSON(code, gin.H{"error": err.Error()})
			return
		}

		ctx.JSON(http.StatusOK, list)
	}
}
