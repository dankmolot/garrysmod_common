file(GLOB SRC_FILES ${CMAKE_CURRENT_LIST_DIR}/source/*.cpp)

add_library(garrysmod_helpers_extended STATIC EXCLUDE_FROM_ALL ${SRC_FILES})
add_library(gmod::helpers_extended ALIAS garrysmod_helpers_extended)

target_compile_definitions(garrysmod_helpers_extended PUBLIC IS_SERVERSIDE=1)
target_include_directories(garrysmod_helpers_extended PUBLIC include include/GarrysMod)
target_link_libraries(garrysmod_helpers_extended gmod::common gmod::helpers gmod::scanning ${CMAKE_DL_LIBS})