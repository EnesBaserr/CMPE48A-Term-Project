docker pull mongo:7.0.5
docker pull mysql:8.3.0
docker pull confluentinc/cp-zookeeper:7.5.0
docker pull confluentinc/cp-kafka:7.5.0
docker pull confluentinc/cp-schema-registry:7.5.0
docker pull provectuslabs/kafka-ui:latest
docker pull mysql:8
docker pull quay.io/keycloak/keycloak:24.0.1
docker pull enesbaser/new-api-gateway:latest
docker pull enesbaser/new-product-service:latest
docker pull enesbaser/new-order-service:latest
docker pull enesbaser/new-inventory-service:latest
docker pull enesbaser/new-notification-service:latest

kind load docker-image -n microservices mongo:7.0.5
kind load docker-image -n microservices mysql:8.3.0
kind load docker-image -n microservices confluentinc/cp-zookeeper:7.5.0
kind load docker-image -n microservices confluentinc/cp-kafka:7.5.0
kind load docker-image -n microservices confluentinc/cp-schema-registry:7.5.0
kind load docker-image -n microservices provectuslabs/kafka-ui:latest
kind load docker-image -n microservices mysql:8
kind load docker-image -n microservices quay.io/keycloak/keycloak:24.0.1
kind load docker-image -n microservices enesbaser/new-api-gateway:latest
kind load docker-image -n microservices enesbaser/new-product-service:latest
kind load docker-image -n microservices enesbaser/new-order-service:latest
kind load docker-image -n microservices enesbaser/new-inventory-service:latest
kind load docker-image -n microservices enesbaser/new-notification-service:latest
