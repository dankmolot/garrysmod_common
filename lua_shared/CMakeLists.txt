add_library(garrysmod_lua_shared STATIC EXCLUDE_FROM_ALL source/LuaShared.cpp)
add_library(gmod::lua_shared ALIAS garrysmod_lua_shared)

target_link_libraries(garrysmod_lua_shared gmod::common ${CMAKE_DL_LIBS})
set_target_properties(garrysmod_lua_shared PROPERTIES FOLDER "garrysmod")
