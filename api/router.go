package api

import (
	"github.com/gin-gonic/gin"
	"goapi/api/controllers"
)

func StandUp() {
	router := gin.Default()

	controllers.RegisterBarController(router)

	err := router.Run(":8080")
	if err != nil {
		return
	}
}
