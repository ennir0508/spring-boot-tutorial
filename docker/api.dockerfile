# syntax=docker/dockerfile:experimental
FROM eclipse-temurin:17-jdk-jammy AS build

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./api /usr/src/app

RUN --mount=type=cache,target=/root/.gradle ./gradlew clean build
RUN mkdir -p build/dependency && (cd build/dependency; jar -xf ../libs/*-SNAPSHOT.jar)

FROM eclipse-temurin:17-jdk-jammy

VOLUME /tmp

ARG DEPENDENCY=/usr/src/app/build/dependency

COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.demo.DemoApplication"]
