message(STATUS "Looking for garrysmod_common/sourcesdk-minimal...")

set(SourceSDK_DIR "./sourcesdk-minimal" CACHE PATH "Path to sourcesdk-minimal relative to garrysmod_common")
cmake_path(ABSOLUTE_PATH SourceSDK_DIR NORMALIZE)

if (NOT IS_DIRECTORY ${SourceSDK_DIR} OR NOT EXISTS ${SourceSDK_DIR}/CMakeLists.txt)
    message(FATAL_ERROR "sourcesdk-minimal not found")
endif()

add_subdirectory(${SourceSDK_DIR} ${CMAKE_CURRENT_BINARY_DIR}/sourcesdk-minimal)
set(SourceSDK_FOUND TRUE)
