# Base image(OS)

FROM openjdk:28-ea-23-slim

# working dir from app

WORKDIR /app

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

RUN javac Main.java
	
EXPOSE 8000

CMD ["java","Main"]
