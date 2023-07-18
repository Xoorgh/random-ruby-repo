#!/home/xoorgh/.rbenv/shims/ruby
# frozen_string_literal: true

AVAILABLE_DENOMINATIONS = [1, 2, 5, 10, 20, 50, 100, 200, 500, 1000]

puts "Sum to return: "
sum = gets.chomp.to_i

@distribution = []

AVAILABLE_DENOMINATIONS.reverse_each do |denomination|
	count = []

	count << denomination
	count << (sum / denomination).to_i
	@distribution << count
	sum -= count.inject(:*)
end
@distribution.each do |pair|
	puts "#{pair[0]}: #{pair[1]}" unless pair[1] == 0
end
