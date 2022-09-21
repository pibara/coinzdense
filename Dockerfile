FROM alpine:latest
RUN apk add thttpd
RUN adduser -D static
USER static
WORKDIR /home/static
COPY *.html *.png *.js *.ico /home/static/
CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "3000", "-d", "/home/static", "-u", "static", "-l", "-", "-M", "60"]
