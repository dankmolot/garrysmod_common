message(STATUS "Looking for garrysmod_common/detouring...")

set(Detouring_DIR "./detouring" CACHE PATH "Path to detouring relative to garrysmod_common")
cmake_path(ABSOLUTE_PATH Detouring_DIR NORMALIZE)

if (NOT IS_DIRECTORY ${Detouring_DIR} AND NOT EXISTS ${Detouring_DIR}/CMakeLists.txt)
    message(FATAL_ERROR "detouring not found")
endif()

add_subdirectory(${Detouring_DIR} ${CMAKE_CURRENT_BINARY_DIR}/detouring)
set(Detouring_FOUND TRUE)
