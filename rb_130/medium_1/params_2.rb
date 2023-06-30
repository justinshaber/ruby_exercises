# raven, finch, *raptors = %w(raven finch hawk eagle)
# p raven # => 'raven'
# p finch # => 'finch'
# p raptors  # => ['hawk','eagle']

birds = %w(raven finch hawk eagle)

def assign_array(birds_arr)
  yield(*birds_arr)
end

assign_array(birds) do |_,_, *raptors|
  puts "Raptors: #{raptors.join(", ")}"
end