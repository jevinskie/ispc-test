#include "iscp-u32.h"

export void sum_ispc(const uniform vec_elem_t a[], const uniform vec_elem_t b[], uniform vec_elem_t o[], const uniform uint32 n) {
    assume(!((uintptr_t)a % ALIGNMENT));
    assume(!((uintptr_t)b % ALIGNMENT));
    assume(!((uintptr_t)o % ALIGNMENT));
    assume(!(n % ALIGNMENT));
    assume(n >= ALIGNMENT);
    assume(n <= (const uniform u32)vec_num_elem_max);
    foreach (i = 0 ... n) {
        o[i] = a[i] + b[i];
    }
}
