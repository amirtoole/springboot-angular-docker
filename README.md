# All your CI Pipeline needs is Git + Docker!

## Build/run using Docker (easy!)
Requirements: Docker CE 17.06.x

1) $ docker-compose up

Visit http://localhost:9000

## Development
### Server
Requirements: JDK 1.8

1) $ ./gradlew bootRun

Springboot server: http://localhost:8080

### Client
Requirements: 
- Node 6.9.0 or higher, NPM 3+
- (highly recommended) yarn: $ npm install -g yarn

1) $ cd src/main/frontend

2) Either:
- (recommended) $ yarn
- npm install

3) $ npm start

Webpack server: http://localhost:4200

http://localhost:4200/api/* is proxied to localhost:8080/api/* 
(see proxy.conf.json)