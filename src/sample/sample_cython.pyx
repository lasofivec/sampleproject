# cython: boundscheck=False
# cython: wraparound=False
# cython: initializedcheck=False
# cython: cdivision=True

import numpy as np
cimport cython
cimport numpy as np

def some_interface_function(tab):
    return some_cython_function(tab, tab.shape[0], tab.shape[1])

cdef double[:,::1] some_cython_function(double[:,::1] tab,
                                        int nrows,
                                        int ncols):
    cdef int ii
    cdef int jj
    for ii in range(nrows):
        for jj in range(ncols):
            tab[ii,jj] = ii * ncols + jj
    return tab
