# example-dockerfile
Для запуска используй:
docker build -t nginx .        где nginx - имя для images, а . путь к Dockerfile

docker run -d -p 8080:8080 nginx:latest