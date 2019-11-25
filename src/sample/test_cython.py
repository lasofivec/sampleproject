import numpy as np
import sample_cython as sc

def testing_cython_func(nrows, ncols):
    tab = np.ones((nrwos, ncols))
    print("last element =", tab[-1, -1])
    tab2 = sc.some_interface_function(tab)
    print("last element of tab  =", tab[-1, -1])
    print("last element of tab2 =", tab2[-1, -1])
    return
