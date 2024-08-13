package main

import (
	"log"

	"github.com/anantapridya/chat-app.git/db"
	"github.com/anantapridya/chat-app.git/internal/user"
	"github.com/anantapridya/chat-app.git/router"
)

func main() {
	dbConn, err := db.NewDatabase()
	if err != nil {
		log.Fatalf("could not initialize database connection: %s", err)
	}

	userRep := user.NewRepository(dbConn.GetDB())
	userSvc := user.NewService(userRep)
	userHandler := user.NewHandler(userSvc)

	router.InitRouter(userHandler)
	router.Start("0.0.0.0:5000")
}