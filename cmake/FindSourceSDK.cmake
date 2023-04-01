function(find_sourcesdk)
    message(STATUS "Searching for Source SDK...")

    # Optional: Set SOURCESDK_MINIMAL_PATH to the path to sourcesdk-minimal relative to garrysmod_common
    set(SOURCESDK_MINIMAL_PATH "./sourcesdk-minimal" CACHE PATH "Path to sourcesdk-minimal relative to garrysmod_common")

    message(STATUS ${SOURCESDK_MINIMAL_PATH})
    # add_subdirectory(${SOURCESDK_MINIMAL_PATH})
endfunction()
