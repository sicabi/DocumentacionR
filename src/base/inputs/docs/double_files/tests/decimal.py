reticulate::repl_python()
from decimal import Decimal
from fractions import Fraction
Fraction.from_float(0.1)
(0.1).as_integer_ratio()
Decimal.from_float(0.1)
format(Decimal.from_float(0.1), '.80')
format(Decimal.from_float(0.1), '.23')
help(decimal)
help(float)

import struct
import numpy as np

def smallest_normalized_decimal():
    # Get the smallest normalized exponent
    smallest_normalized_exponent = np.finfo(np.float64).minexp

    # Calculate the smallest normalized significand
    smallest_normalized_significand = 1.0

    # Calculate the smallest normalized decimal number
    smallest_normalized_decimal = smallest_normalized_significand * 2 ** smallest_normalized_exponent

    return smallest_normalized_decimal

# Print the smallest normalized decimal number
print(smallest_normalized_decimal())

# Print the highest normalized decimal number
print(np.finfo(np.float64).max)
print(np.finfo(np.float64).min)
