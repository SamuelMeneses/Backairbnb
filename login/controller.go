package login

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func LoginHandler(service ServiceBase) gin.HandlerFunc {
	return func(ctx *gin.Context) {
		loginInfo := loginInfo{}
		if err := ctx.ShouldBindJSON(&loginInfo); err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}

		code, err := service.Login(loginInfo)
		if err != nil {
			ctx.JSON(code, gin.H{"error": err.Error()})
			return
		}

		ctx.Status(http.StatusNoContent)
	}
}
