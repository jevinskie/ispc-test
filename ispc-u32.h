#pragma once
#include "hedley.h"
#ifndef ISPC
#include <climits>
#include <cstdint>
#endif

// typedef uint8 uint32_t;
// typedef uint64 size_t;

#define ALIGNMENT 4096

#ifdef __cplusplus
#define RESTRICT __restrict__
#elif defined(ISPC)
#define RESTRICT
#else
#define RESTRICT restrict
#endif

#ifndef ISPC
typedef uint32_t u32;
#else
typedef uint32 u32;
#endif

#ifndef UINT32_MAX
#define UINT32_MAX (~((u32)0))
#endif

#ifndef ISPC
typedef u32 vec_elem_t;
#else
#define vec_elem_t u32
#endif

#define vec_bit_width 512
#ifndef ISPC
#define vec_byte_width (vec_bit_width / 8)
#else
#define vec_byte_width 64
#endif

#define vec_elem_size_bytes (sizeof(vec_elem_t))

#ifndef ISPC
#define vec_type_num_elem ((u32)(vec_byte_width / sizeof(vec_elem_t)))
#else
#define vec_type_num_elem 16
#endif

#ifndef ISPC
typedef vec_elem_t vN_elem_t __attribute__((vector_size(vec_byte_width));
#else
typedef vec_elem_t<vec_byte_width> vN_elem_t;
#endif


#ifndef ISPC
typedef vN_elem_t *aligned_vN_elem_ptr __attribute__((align_value(ALIGNMENT)));
#else
typedef vN_elem_t *aligned_vN_elem_ptr;
#endif

HEDLEY_STATIC_ASSERT(sizeof(vN_elem_t) * 8 == vec_width, "sizeof(vN_elem_t) * 8 == vec_width")

#ifndef ISPC
typedef vN_elem_t *const const_aligned_vN_elem_ptr __attribute__((align_value(ALIGNMENT)));
#else
typedef vN_elem_t *const const_aligned_vN_elem_ptr;
#endif

#ifndef ISPC
typedef vec_elem_t *aligned_elem_ptr __attribute__((align_value(ALIGNMENT)));
#else
typedef vec_elem_t *aligned_elem_ptr;
#endif

#ifndef ISPC
typedef vec_elem_t *const const_aligned_elem_ptr __attribute__((align_value(ALIGNMENT)));
#else
typedef vec_elem_t *const const_aligned_elem_ptr;
#endif

HEDLEY_STATIC_ASSERT(ALIGNMENT % sizeof(vN_elem_t) == 0, "ALIGNMENT % sizeof(vN_elem_t) == 0");


HEDLEY_STATIC_ASSERT(vec_type_num_elem == (vec_width / sizeof(vec_elem_t)), "vec_type_num_elem == (vec_width / sizeof(vec_elem_t))")
// #define vec_size_bytes ((u32)(1024 * 1024 * 64))
#define vec_size_bytes ((u32)(1024 * 12)) // 4096 * 3
HEDLEY_STATIC_ASSERT(vec_size_bytes % ALIGNMENT == 0, "vec_size_bytes % ALIGNMENT == 0");
#define vec_num_elem_max ((u32)(UINT32_MAX / 4))
#define vec_num_elem     ((u32)(vec_size_bytes / sizeof(vec_elem_t)))
HEDLEY_STATIC_ASSERT(vec_num_elem < vec_num_elem_max, "vec_num_elem < vec_num_elem_max");

extern "C" sum_ispc(const const_aligned_elem_ptr RESTRICT a, const const_aligned_elem_ptr RESTRICT b, aligned_elem_ptr RESTRICT o, uint32_t n);
