add_executable(AsioTest AsioTest.cpp)
target_link_libraries(AsioTest PUBLIC CONAN_PKG::asio)
