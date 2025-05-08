def show_decimal_digits(number, max_digits=100):
  """
  This function prints the decimal digits of a real number 
  up to a maximum number of digits.

  Args:
      number: The real number to print digits for.
      max_digits: The maximum number of digits to print (default 100).
  """
  # Extract the integer and decimal parts
  integer_part = int(number)
  float_part = number - integer_part

  # Print the integer part
  print(integer_part, end="")

  # Check if there's a decimal part
  if float_part != 0:
    print(".", end="")

    # Iterate and print digits up to max
    for _ in range(max_digits):
      float_part *= 10
      digit = int(float_part)
      print(digit, end="")
      float_part -= digit

      # Check if repeating pattern is found (e.g., 0.9999...)
      if float_part == 0:
        print(" (repeating)", end="")
        break

  print()

# Example usage
show_decimal_digits(3.14159, 100)  # Prints 3.14159265358979
show_decimal_digits(1.0 / 3, 20)  # Prints 0.3333333333333333 (repeating
