function(find_detouring)
    message(STATUS "Searching for Detouring...")

    set(DETOURING_PATH "./detouring" CACHE PATH "Path to detouring relative to garrysmod_common")

    add_subdirectory(${DETOURING_PATH} ${CMAKE_CURRENT_BINARY_DIR}/detouring)
endfunction()
