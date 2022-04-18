FROM golang:1.18.1-alpine
WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build -buildvcs=false
CMD ["./explore-go"]
