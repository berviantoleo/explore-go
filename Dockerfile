FROM golang:1.19.1-alpine
WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
CMD ["./explore-go"]
