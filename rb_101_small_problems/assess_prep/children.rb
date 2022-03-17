# def find_children(str)
#   p str.chars.sort.sort_by(&:downcase)
# end

# p find_children("abBA") == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""

def in_order?(str1, str2)
  (0...[str1.size, str2.size].min).each do |idx|
    next if str2[idx] == str2[idx]
    str2[idx] < str1[idx] ? true : false
  end 
end 

p in_order?("Helpo", "Helloo")