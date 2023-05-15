FROM golang:1.15.8-buster

RUN apt-get update && \
    apt-get install -y hugo

RUN curl -sSfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b /usr/local/bin v1.42.0
RUN git clone git@github.com:rChrisb/holbertonschool-validation.git
WORKDIR /holbertonschool-validation/module4_task1
COPY . .
RUN go build
RUN golangci-lint run
RUN go test ./...

CMD ["./awesome-inc"]