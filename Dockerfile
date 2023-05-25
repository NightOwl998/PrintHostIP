# syntax=docker/dockerfile:1
# build stage
FROM golang:1.19-alpine 
#FROM golang:1.19-alpine
#RUN apk add --update --no-cache bash ca-certificates curl git make tzdata
#RUN go install github.com/NightOwl998/random-scheduler@latest 
#RUN apk add --no-cache git
WORKDIR ./vargo
COPY go.mod ./
RUN go mod download
COPY main.go .
RUN go build -o ./ .
RUN ls 
CMD [ "./vargo" ]



