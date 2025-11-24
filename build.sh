cmake -S . -B build
cmake --build build

docker buildx build -t mysql-with-http:5.7.42 .