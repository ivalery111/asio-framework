set(OPTIONS "")

if(ENABLE_TESTING)
    set(OPTIONS ${OPTIONS} with_tests=True)
endif()

include(cmake/Conan/conan.cmake)

conan_add_remote(NAME
                 bincrafters
                 URL
                 https://api.bintray.com/conan/bincrafters/public-conan)

conan_cmake_run(CONANFILE conanfile.py
                OPTIONS ${OPTIONS}
                BASIC_SETUP
                CMAKE_TARGETS
                BUILD
                missing)
