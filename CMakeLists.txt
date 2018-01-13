cmake_minimum_required(VERSION 3.9)
project(permutations)

set(CMAKE_CXX_STANDARD 11)

add_executable(permutations main.cpp permutation.cpp permutation.h)

#   Threads
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(permutations Threads::Threads)