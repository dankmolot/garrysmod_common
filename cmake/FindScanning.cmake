message(STATUS "Looking for garrysmod_common/scanning...")

set(Scanning_DIR "./scanning" CACHE PATH "Path to scanning relative to garrysmod_common")
cmake_path(ABSOLUTE_PATH Scanning_DIR NORMALIZE)

if (NOT IS_DIRECTORY ${Scanning_DIR} OR NOT EXISTS ${Scanning_DIR}/CMakeLists.txt)
    message(FATAL_ERROR "scanning not found")
endif()

add_subdirectory(${Scanning_DIR} ${CMAKE_CURRENT_BINARY_DIR}/scanning)
set(Scanning_FOUND TRUE)
