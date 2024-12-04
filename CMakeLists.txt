cmake_minimum_required(VERSION 3.22)

project(ispc-microbenchmarks CXX ISPC)

option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)." ON)

if (${FORCE_COLORED_OUTPUT})
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
       set(COLOR_DIAGS -fdiagnostics-color=always)
    elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "AppleClang")
       set(COLOR_DIAGS -fcolor-diagnostics)
    else()
        set(COLOR_DIAGS)
    endif ()
endif ()

set(BUILD_SHARED_LIBS OFF)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS ON)

set(FAST_CISH_FLAGS -O3)
set(FAST_CFLAGS ${FAST_CISH_FLAGS} ${COLOR_DIAGS} -fvectorize -flto=full -funified-lto -fvisibility=hidden -fvisibility-inlines-hidden -fvisibility-inlines-hidden-static-local-var -fdata-sections -ffunction-sections -march=native -fno-unwind-tables -fno-asynchronous-unwind-tables)
set(FAST_CXXFLAGS ${FAST_CFLAGS} -stdlib=libc++ -fno-rtti)
set(FAST_LDFLAGS ${FAST_CXXFLAGS} -L/usr/lib/llvm-19/lib -Wl,-rpath,/usr/lib/llvm-19/lib -fuse-ld=lld -Wl,-gc-sections,--lto-O3,--optimize-bb-jumps,--lto=full,--lto-whole-program-visibility,--lto-partitions=1,--icf=none,--fat-lto-objects,--Bsymbolic)

add_link_options(${FAST_LDFLAGS})

# add_compile_options(-mprefer-vector-width=512)
# add_link_options(-mprefer-vector-width=512)

# add_compile_options(-O0 -glldb)
# add_link_options(-O0 -glldb)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/googletest EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/benchmark EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/gflags EXCLUDE_FROM_ALL)

add_executable(ispc-u32 ispc-u32.cpp ispc-u32.ispc)

target_link_libraries(ispc-u32 PRIVATE benchmark gflags)
target_compile_options(ispc-u32 PRIVATE $<$<COMPILE_LANGUAGE:CXX>:${FAST_CXXFLAGS}> $<$<COMPILE_LANGUAGE:ISPC>:${FAST_CISH_FLAGS}>)

install(TARGETS ispc-u32
    RUNTIME DESTINATION bin
)
