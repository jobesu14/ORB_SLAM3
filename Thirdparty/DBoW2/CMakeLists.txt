cmake_minimum_required(VERSION 2.8)
project(DBoW2)

SET(CMAKE_BUILD_TYPE Release)
set(CMAKE_BUILD_ARCH x64)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}  -Wall  -O3 -march=native ")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall  -O3 -march=native")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(HDRS_DBOW2
  DBoW2/BowVector.h
  DBoW2/FORB.h 
  DBoW2/FClass.h       
  DBoW2/FeatureVector.h
  DBoW2/ScoringObject.h   
  DBoW2/TemplatedVocabulary.h)
set(SRCS_DBOW2
  DBoW2/BowVector.cpp
  DBoW2/FORB.cpp      
  DBoW2/FeatureVector.cpp
  DBoW2/ScoringObject.cpp)

set(HDRS_DUTILS
  DUtils/Random.h
  DUtils/Timestamp.h)
set(SRCS_DUTILS
  DUtils/Random.cpp
  DUtils/Timestamp.cpp)

find_package(OpenCV 4 QUIET)
if(NOT OpenCV_FOUND)
  find_package(OpenCV 3.0 QUIET)
  if(NOT OpenCV_FOUND)
    find_package(OpenCV 2.4.3 QUIET)
    if(NOT OpenCV_FOUND)
        message(FATAL_ERROR "OpenCV > 2.4.3 not found.")
    endif()
  endif()
endif()

set(Boost_USE_STATIC_LIBS ON)
# set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} "C:/boost/boost_1_60_0")
# set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "C:/boost/boost_1_60_0/lib")
# set(Boost_DEBUG ON)
# set(BOOST_ROOT C:/boost)
# set(BOOST_INCLUDEDIRS C:/boost/boost_1_60_0)
# set(BOOST_LIBRARYDIRS C:/boost/boost_1_60_0/lib)
# set(BOOST_NO_SYSTEM_PATHS ON)
find_package(Boost COMPONENTS serialization) 

if(NOT Boost_FOUND)
  message(FATAL_ERROR "Boost not found.")
endif()

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include_directories(${OpenCV_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS})
add_library(DBoW2 SHARED ${SRCS_DBOW2} ${SRCS_DUTILS})
target_link_libraries(DBoW2 ${OpenCV_LIBS} ${Boost_LIBRARIES})

