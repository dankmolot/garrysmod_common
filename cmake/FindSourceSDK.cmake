function(find_sourcesdk)
    message(STATUS "Searching for SourceSDK...")

    # Optional: Set SOURCESDK_MINIMAL_PATH to the path to sourcesdk-minimal relative to garrysmod_common
    set(SOURCESDK_MINIMAL_PATH "./sourcesdk-minimal" CACHE PATH "Path to sourcesdk-minimal relative to garrysmod_common")

    add_subdirectory(${SOURCESDK_MINIMAL_PATH} ${CMAKE_CURRENT_BINARY_DIR}/sourcesdk-minimal)
endfunction()
