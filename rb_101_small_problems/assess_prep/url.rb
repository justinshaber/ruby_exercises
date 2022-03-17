# 9:54
# 10:07
# 13 minutes

=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end

=begin
P: given a url string, parse out just the domain and return it as a string
  i: string - url
  o: string - just the domain name
E+R:
  domain name occurs after '/' without '.'
  or after 'w' with a '.'
D: split, arrays, strings
Approach
  SPLIT the string by http:// or www. depending on what the string starts with.
  SPLIT the second item in the array by '.'
  RETURN the first item of returned array
=end

def domain_name(url)
  # if url[0] == 'h'
  #   url_arr = url.split("://")
  # else
  #   url_arr = url.split("www.")
  # end
  
  prefix = (url[0] == 'h' ? "://" : "www.")
  url_arr = url.split(prefix)
  url_arr[1].split('.')[0]
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"