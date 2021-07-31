

def triangle(num)
    num.times do |i|
      sleep(0.01)
      puts (' ' * (num-i)) + ('*' * (i+1) )
    end
    num.times do |i|
      sleep(0.01)
      puts (' ' * (i+1) )+ ('*' * (num-i))
    end
    num.times do |i|
      sleep(0.01)
      puts ('*' * (i+1) )+ (' ' * (num-i)) 
    end
    num.times do |i|
      sleep(0.01)
      puts ('*' * (num-i)) + (' ' * (i+1) )
    end
end

triangle(50)