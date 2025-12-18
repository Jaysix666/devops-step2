# Spring Boot 실행용 JDK 이미지 (공식 권장)
FROM eclipse-temurin:17-jdk-jammy

# 작업 디렉터리
WORKDIR /app

# 빌드된 jar 복사
COPY build/libs/*.jar app.jar

# 애플리케이션 포트
EXPOSE 8080

# 컨테이너 실행 명령
ENTRYPOINT ["java", "-jar", "app.jar"]
