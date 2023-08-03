cmake_minimum_required(VERSION 3.0.0)
project(ch3ckers VERSION 0.1.0)

aux_source_directory(src SOURCES)
include_directories(includes)

add_executable(ch3ckers ${SOURCES})