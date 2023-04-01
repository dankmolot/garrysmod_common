# https://github.com/Facepunch/gmod-module-base/blob/development/include/CMakeLists.txt

function(set_gmod_suffix_prefix library)
	SET_TARGET_PROPERTIES(${library} PROPERTIES PREFIX "gmsv_")

	if(APPLE)
		if("${CMAKE_SIZEOF_VOID_P}" STREQUAL "4")
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_osx.dll")
		else()
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_osx64.dll")
		endif()
	elseif(UNIX)
		if("${CMAKE_SIZEOF_VOID_P}" STREQUAL "4")
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_linux.dll")
		else()
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_linux64.dll")
		endif()
	elseif(WIN32)
		if("${CMAKE_SIZEOF_VOID_P}" STREQUAL "4")
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_win32.dll")
		else()
			SET_TARGET_PROPERTIES(${library} PROPERTIES SUFFIX "_win64.dll")
		endif()
	endif()
endfunction()
