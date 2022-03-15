def is_prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    return false if num % i == 0 
  end
  true
end

def prime_maxlength_chain(val_max)
  primes = (0...val_max / 2).select { |i| is_prime?(i) }

  longest = 0
  results = []
  
  0.upto(primes.size - 1) do |start|
      2.upto(Math.sqrt(val_max) - start) do |length|
        next if length < longest
        
        sub_arr = primes[start, length]
        sum = sub_arr.sum
        
        next if sum >= val_max || !is_prime?(sum)
        
        if length == longest
          results << sum
        else
          longest = length
          results = [sum]
        end
      end   
  end
  
  "#{val_max}, #{longest}, #{results}"
end

p prime_maxlength_chain(100)
p prime_maxlength_chain(500)
p prime_maxlength_chain(499)
p prime_maxlength_chain(1000)
p prime_maxlength_chain(5000)
p prime_maxlength_chain(10000)
p prime_maxlength_chain(49999)