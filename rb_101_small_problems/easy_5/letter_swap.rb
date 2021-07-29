def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  str = str.split(" ").map do |word|
    # ------------------My attempt at doing a, b = b, a
    # first = word[0]
    # last = word[-1]
    # first, last = last, first
    
    # word[0], word[-1] = word[-1], word[0]
    # word
    swap_first_last_characters(word)

    # --------------------This was my clunky solution
    # word = word.chars
    # first = word.shift
    # last = word.pop

    # word.unshift(last)
    # word.push(first)

    

    # word.join
  end
  
  str.join(" ")
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'