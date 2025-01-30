package controllers

import (
	"github.com/gin-gonic/gin"
	"goapi/api/services"
	"net/http"
)

type BarsController struct {
	BarService *services.BarService
}

func RegisterBarController(router *gin.Engine) {
	barController := &BarsController{new(services.BarService)}

	router.GET("/hello", barController.helloWorld)

	//return router
}

func (bc *BarsController) helloWorld(ctx *gin.Context) {

	respString := bc.BarService.GetWorld()

	ctx.IndentedJSON(http.StatusOK, gin.H{"Hello": respString})
}
