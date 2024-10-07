FROM golang:1.23.2-alpine
WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
EXPOSE 1323
CMD ["./explore-go"]
