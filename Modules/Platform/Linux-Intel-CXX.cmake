SET (CMAKE_CXX_FLAGS_INIT "")
SET (CMAKE_CXX_FLAGS_DEBUG_INIT "-g")
SET (CMAKE_CXX_FLAGS_MINSIZEREL_INIT "-Os -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELEASE_INIT "-O3 -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "-O2 -g")

FIND_PROGRAM(XIAR xiar)
IF(XIAR) 
   SET(CMAKE_CXX_CREATE_STATIC_LIBRARY
      "${XIAR} cr <TARGET> <LINK_FLAGS> <OBJECTS> "
      "${XIAR} -s <TARGET> ")
ENDIF(XIAR)
MARK_AS_ADVANCED(XIAR)
