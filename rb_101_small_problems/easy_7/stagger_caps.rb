# def staggered_case(str)
#   new_str = ''

#   str.chars.each_with_index do |char, index|
#     new_str << (index.even? ? char.upcase : char.downcase)
#   end

#   new_str
# end

def staggered_case(string, request)
  result = ''
  need_upper = (request == 'up')
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!', "up") #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', "down") #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', "up") #== 'AlL_CaPs'
p staggered_case('ALL_CAPS', "down") #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', "up") #== 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('ignore 77 the 444 numbers', "down") #== 'IgNoRe 77 ThE 444 NuMbErS'