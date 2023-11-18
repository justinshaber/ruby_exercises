def organize(arr)
  yield(arr)
end

birds = %w(raven finch hawk eagle)

organize(birds) { |_,_,*raptors| puts "Raptors: #{raptors.join(", ")}" }