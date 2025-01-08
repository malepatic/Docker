FROM golang:1.20-alpine

WORKDIR /

COPY server.go .
COPY index.html ./index.html

RUN go build -o server server.go

EXPOSE 3000

CMD [ "./server" ]



