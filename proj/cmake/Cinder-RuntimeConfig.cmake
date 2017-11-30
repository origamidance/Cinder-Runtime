if(NOT TARGET Cinder-Runtime)
  get_filename_component( CINDER-RUNTIME_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
	get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../../Cinder" ABSOLUTE )
  message("CINDER PATH= ${CINDER_PATH}")
  file(GLOB_RECURSE CINDER-RUNTIME_SOURCES "${CINDER-RUNTIME_PATH}/src/runtime/*.cpp")
  add_library( Cinder-Runtime ${CINDER-RUNTIME_SOURCES} )
  list( APPEND CINDER-RUNTIME_INCLUDE_DIR
    ${CINDER-RUNTIME_PATH}/include
    )
  target_include_directories( Cinder-Runtime PUBLIC "${CINDER-RUNTIME_INCLUDE_DIR}")
  if( NOT TARGET cinder )
		include( "${CINDER_PATH}/proj/cmake/configure.cmake" )
		find_package( cinder REQUIRED PATHS
		  "${CINDER_PATH}/${CINDER_LIB_DIRECTORY}"
		  "$ENV{CINDER_PATH}/${CINDER_LIB_DIRECTORY}" )
  endif()
  target_link_libraries( Cinder-Runtime PRIVATE cinder)
endif()
