file(GLOB SRC_FILES ${CMAKE_CURRENT_LIST_DIR}/source/*.cpp)

add_library(garrysmod_helpers_extended STATIC ${SRC_FILES})
add_library(gmod::helpers_extended ALIAS garrysmod_helpers)

target_compile_definitions(garrysmod_helpers_extended PUBLIC IS_SERVERSIDE=1)
target_include_directories(garrysmod_helpers_extended PUBLIC include include/GarrysMod)
target_link_libraries(garrysmod_helpers_extended gmod::common gmod::helpers ${CMAKE_DL_LIBS}) # TODO add scanning here