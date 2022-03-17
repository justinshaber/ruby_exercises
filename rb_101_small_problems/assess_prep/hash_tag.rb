# 10:37
# 10:53
# 16 mins


=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false
=end

=begin
P: Given a string, convert it into a hashtag
  i: string
  o: string - hashtag
E+R:
  return false if
    the final results is longer than 140 chars
    the input or the result is empty
    hashtag starts with '#' every word is capitalized and joined together
D: arrays, strings, capitalize
Approach
  return false if the string is empty
  SPLIT the string into an array of words
  MAP over each word
    CAPITALIZE
    Remove anything that isn't a A-Za-z

  unshift("#")
  JOIN
  return false if the result is longer than 140 or 0
=end

def generateHashtag(str)
  hash_tag = str.split(" ").map{ |word| word.gsub(/[^A-Za-z0-9]/, '').capitalize }.join
  hash_tag = '#' + hash_tag

  hash_tag.size > 140 || hash_tag.size == 1 ? false : hash_tag
end


p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
