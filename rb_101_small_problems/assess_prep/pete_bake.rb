###25 on google doc with CW problems

# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.


=begin
###problem###
Create a method that returns an integer representing the maximum number of cakes that can be made given the recipe and available ingredients.

input - two hashes
output - integer

###Examples###
- no units
- ingredient that is not present is 0



###Data Structures###
Hash
Arrays


###algorithm###
Iterate through the recipe
See if there is a corresponding ingredient in the ingedients
  If there is not, return 0, b/c no cake can be made
  divide the amount of ingedient by what is needed, and store that value in an array
  If the value is less than 1, return 0 b/c there isn't enough ingredient
return the minimum of the array


###code###


=end

def cakes(recipe, available)
  possible_cakes = []
  
  recipe.each do |ingr, amount|
    return 0 if available.include?(ingr) == false
    possible_cakes << (available[ingr] / amount)
  end
  
  possible_cakes.min
end


def cakes(recipe, available)
  return 0 unless recipe.keys.all? { |item| available.key?(item) }
  possible_cakes = []
  recipe.each do |rkey, rval|
    possible_cakes << available[rkey] / rval
  end
  possible_cakes.min
end

def cakes(recipe, available)
  recipe.collect { | k, v | available[k].to_i / v }.min
end

def cakes(recipe, available)
  result = []

  return 0 if recipe.keys.count > available.keys.count
  
  recipe.each do |ingredient, amount|
    if (available[ingredient])
      result << (available[ingredient]/ amount)
    else
      result << 0
    end
  end
  
  result.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2

p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0

p cakes({"eggs"=>4, "flour"=>400},{}) == 0

p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

