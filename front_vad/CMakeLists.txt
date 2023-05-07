cmake_minimum_required(VERSION 3.24)
project(front_vad)

if (WIN32 OR MSVC)
    set(CMAKE_PREFIX_PATH "C:/dev/vcpkg/installed/x64-windows/share")
endif ()

find_package(SampleRate)
find_package(glog)

add_library(${PROJECT_NAME} STATIC denoiser.cc resampler.cc sample_queue.cc)
target_link_libraries(${PROJECT_NAME} PUBLIC SampleRate::samplerate glog::glog rnnoise)
target_include_directories(${PROJECT_NAME} PUBLIC .)
