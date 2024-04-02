version: '3'

services: 
  mongo:
    image: mongo
    container_name: mongodb
    restart: always 
    ports: 
      - "27017:27017"
    volume: 
      - mynewdb:/data/db
    networks:
      - mongo-network 

  mongo_express:
    image: mongo-express
    container_name: mongo-express 
    restart: always 
    ports: 
      - "8081:8081"
    environment:
      ME_CONFIG_MONGODB_SERVER: mongo 
      ME_CONFIG_MONGODB_AUTH_USERNAME: root
      ME_CONFIG_MONGODB_AUTH_PASSWORD: password
    depends_on:
      - mongodb
    networks:
      - mongo-network 

networks:
  mongo-network 

volumes: 
  mynewdb: 
