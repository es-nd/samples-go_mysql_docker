from golang:latest

RUN mkdir /app
COPY go.mod /app/go.mod
COPY go.sum /app/go.sum
RUN ls
WORKDIR /app

RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm

