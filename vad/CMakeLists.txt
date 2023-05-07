cmake_minimum_required(VERSION 3.24)
project(vad)

if (WIN32 OR MSVC)
    set(CMAKE_PREFIX_PATH "C:/dev/vcpkg/installed/x64-windows/share")
endif ()

find_package(glog CONFIG REQUIRED)
find_package(ONNX CONFIG REQUIRED)

add_library(${PROJECT_NAME} STATIC onnx_model.cc vad_model.cc)
target_link_libraries(${PROJECT_NAME} PUBLIC front_vad glog::glog onnx)
target_include_directories(${PROJECT_NAME} PUBLIC .)
