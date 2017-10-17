FROM alpine/git as git
WORKDIR /app
RUN git clone https://github.com/hellofornow/springboot-angular-docker.git


FROM node:8.4.0-slim as clientbuilder
WORKDIR /app
COPY --from=git /app/springboot-angular-docker/src/main/frontend .
RUN yarn
RUN npm run build


FROM openjdk:8u141-jdk-slim as serverbuilder
WORKDIR /app
COPY --from=git /app/springboot-angular-docker .
COPY --from=clientbuilder /app/dist /app/src/main/resources/static
RUN ./gradlew build


FROM openjdk:8-jre-alpine
ENV artifact app-0.0.1.jar
WORKDIR /app
COPY --from=serverbuilder /app/build/libs/${artifact} /app
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar ${artifact}"]