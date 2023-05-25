a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
puts "My guess: 7"

=begin
Variables initialized in an inner scope are accessible to to an outer scope, but not vice versa.
When we invoke the puts method on line 8, ruby first looks in the same scope for the passed variable, which is `a = 7`.
Line 4 `a += 10` is shorthand for reassignment which does not mutate the caller.
=end