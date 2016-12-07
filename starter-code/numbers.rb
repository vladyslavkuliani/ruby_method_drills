##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
  def count_to(n)
    arr = []
    if n>=0
      n = n.floor
      0.upto(n) do |x|
        arr << x
      end
    else
      n = -(-n).floor
      0.downto(n) do |x|
        arr << x
      end
    end
    arr
  end
#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(n)
  if !n.is_a?(Numeric) || n.to_f.nan?
    return false
  elsif n.class == Fixnum || n.class == Bignum
    return true
  elsif n == n.round
    return true
  end
  return false
end
#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(n)
  count = 0
  if n.class==Float || n<1
    false
  else
    (2...n).to_a.each{|num| if n%num==0 then count+=1 end}
    return count==0 ? true : false
  end
end
#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than(n)
  arr = []
  n-=1
  while n>1 do
    if is_prime?(n)
      arr << n
    end
    n-=1
  end
  arr.sort
end
## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(n)
  factorial = 1
  if !n.is_a?(Fixnum) || n<0
    return Float::NAN
  elsif n==0 || n==1
    return factorial
  else
    2.upto(n){|num| factorial *= num}
    return factorial
  end
end
