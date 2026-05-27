FROM eclipse-temurin:21-jre

WORKDIR /server

COPY . .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]