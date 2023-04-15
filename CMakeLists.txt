cmake_minimum_required(VERSION 3.20)

project(garrysmod_common)

# garrysmod_common requires C++ 17 atleast
set(CMAKE_CXX_STANDARD_REQUIRED 17)

add_subdirectory(cmake)

find_sourcesdk()
find_scanning()
find_detouring()

add_subdirectory(lua_shared)
add_subdirectory(helpers)
add_subdirectory(helpers_extended)

add_library(garrysmod_common INTERFACE EXCLUDE_FROM_ALL)
add_library(gmod::common ALIAS garrysmod_common)

target_include_directories(garrysmod_common INTERFACE include)

# Let everyone know that garrysmod_common was included
set(GARRYSMOD_COMMON_FOUND TRUE CACHE INTERNAL "GARRYSMOD_COMMON_FOUND")