class Prime
  # a is 1 <= a <= 10**9
  def valid?(a)
    return false if a < 1
    return false if a > 10**9
    true
  end
  
  # if a is prime number return true or return false. 
  def is_prime?(a)
    max = a -1
    [*(2..max)].each do |val|
      if a % val == 0
        return false
      end
    end
    true
  end
end

# main is return message
def main(a)
  klass = Prime.new
  return 'valid error' unless klass.valid?(a)
  return  "#{a} is not prime" unless klass.is_prime?(a)
  "#{a} is prime"
end

a = 17
puts main(a)
