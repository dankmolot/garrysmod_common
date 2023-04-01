add_library(garrysmod_helpers STATIC source/ModuleLoader.cpp)
add_library(gmod::helpers ALIAS garrysmod_helpers)

target_include_directories(garrysmod_helpers PUBLIC include)
target_link_libraries(garrysmod_helpers gmod::common ${CMAKE_DL_LIBS})