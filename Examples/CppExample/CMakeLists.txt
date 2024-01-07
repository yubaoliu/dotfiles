cmake_minimum_required(VERSION 2.8)
project(CppExample)
find_package(OpenCV REQUIRED )

set( CMAKE_EXPORT_COMPILE_COMMANDS 1 )

if (OpenCV_FOUND)
    include_directories( ${OpenCV_INCLUDE_DIRS} .)
    add_executable( DisplayImage DisplayImage.cpp hello.cpp)
    target_link_libraries( DisplayImage ${OpenCV_LIBS} )
endif(OpenCV_FOUND)

add_executable( HelloWorld  main.cpp)
#target_link_libraries( HelloWorld  )

# first we can indicate the documentation build as an option and set it to ON by default
option(BUILD_DOC "Build documentation" ON)

# check if Doxygen is installed
# find_package(Doxygen)
#
# if (DOXYGEN_FOUND)
#     # set input and output files
#     set(DOXYGEN_IN ${CMAKE_SOURCE_DIR}/doxygen/Doxyfile.in)
#     set(DOXYGEN_OUT ${CMAKE_BINARY_DIR}/Doxyfile)
#
#     # request to configure the file
#     configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)
#     message("Doxygen build started")
#
#     # note the option ALL which allows to build the docs together with the application
#     add_custom_target( doc_doxygen ALL
#         COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
#         WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
#         COMMENT "Generating API documentation with Doxygen"
#         VERBATIM )
# else (DOXYGEN_FOUND)
#   message("Doxygen need to be installed to generate the doxygen documentation")
# endif (DOXYGEN_FOUND)
