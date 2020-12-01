From eclipse-mosquitto:latest
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

RUN apk update && apk add --no-cache nano

EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]