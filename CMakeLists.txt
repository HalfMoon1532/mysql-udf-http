cmake_minimum_required(VERSION 3.10)

project(mysql-udf-http C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

find_package(PkgConfig REQUIRED)
pkg_check_modules(CURL REQUIRED libcurl)

include_directories(include/mysql ${CURL_INCLUDE_DIRS})

add_library(http SHARED
    src/mysql-udf-http.c
)

target_link_directories(http PRIVATE
    lib64/mysql
)

target_link_libraries(
    http
    mysqlclient
    ${CURL_LIBRARIES}
)
