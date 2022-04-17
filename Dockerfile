FROM golang:1.17-alpine
WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
CMD ["./explore-go"]
