add_library(garrysmod_helpers STATIC EXCLUDE_FROM_ALL source/ModuleLoader.cpp)
add_library(gmod::helpers ALIAS garrysmod_helpers)

target_include_directories(garrysmod_helpers SYSTEM PUBLIC include)
target_link_libraries(garrysmod_helpers gmod::common ${CMAKE_DL_LIBS})
set_target_properties(garrysmod_helpers PROPERTIES FOLDER "garrysmod")
