FROM golang:1.16-alpine
WORKDIR /go/src/app
COPY . .

RUN go mod init && go get -d -v ./... && go install -v ./...

CMD ["app"]