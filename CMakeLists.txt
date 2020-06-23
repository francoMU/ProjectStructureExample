cmake_minimum_required (VERSION 3.13)

project (Test CXX Fortran)

set (CMAKE_CXX_STANDARD 17)

add_executable (Test main.cpp solver.f90)

target_compile_options(Test PUBLIC $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>)

target_compile_options(Test PUBLIC -ipo -O2 -xHost)

target_link_options(Test PUBLIC -ipo)

