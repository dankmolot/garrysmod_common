function(find_scanning)
    message(STATUS "Searching for Scanning...")

    set(SCANNING_PATH "./scanning" CACHE PATH "Path to scanning relative to garrysmod_common")

    add_subdirectory(${SCANNING_PATH} ${CMAKE_CURRENT_BINARY_DIR}/scanning)
endfunction()
