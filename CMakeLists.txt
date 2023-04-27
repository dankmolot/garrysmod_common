cmake_minimum_required(VERSION 3.20)

project(garrysmod_common)

# garrysmod_common requires C++ 17 atleast
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(cmake)

find_sourcesdk()
find_scanning()
find_detouring()

add_subdirectory(lua_shared)
add_subdirectory(helpers)
add_subdirectory(helpers_extended)

add_library(garrysmod_common INTERFACE EXCLUDE_FROM_ALL)
add_library(gmod::common ALIAS garrysmod_common)

target_compile_definitions(
    GMMODULE
    IS_SERVERSIDE=1 # TODO: Make support for client dll
    GMOD_ALLOW_OLD_TYPES
    GMOD_ALLOW_LIGHTUSERDATA
)

target_include_directories(garrysmod_common SYSTEM INTERFACE include)

# Let everyone know that garrysmod_common was included
set(GARRYSMOD_COMMON_FOUND TRUE CACHE INTERNAL "GARRYSMOD_COMMON_FOUND")