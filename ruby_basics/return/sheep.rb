def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts "#{count_sheep}\n\n"

def count_sheep2
  5.times do |sheep|
    puts sheep
  end
  10
end

puts "#{count_sheep2}\n\n"

def count_sheep3
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep3