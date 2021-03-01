cmake_minimum_required(VERSION 3.15)

project(ASIO_NetFramework LANGUAGES CXX)

option(ENABLE_TESTING "Enable Testing" OFF)

include(cmake/Conan/conan.cmake)
include(cmake/Conan/SetupConan.cmake)

if(ENABLE_TESTING)
    enable_testing()
    add_subdirectory(test)
endif()
