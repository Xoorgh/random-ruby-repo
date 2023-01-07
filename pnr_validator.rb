#!/usr/bin/ruby

def pnr_validator(pnr)
	pnr = pnr.chars.map(&:to_i)
	checknum = pnr.pop
	sum = pnr.map.with_index {|v,i| i % 2 == 0 ? v * 2 : v}.join.chars.map(&:to_i).sum
	if (10 - (sum % 10)) % 10 == checknum
		puts "Ett riktigt pnr!"
	else
		puts "IMPOSTOR!"
	end
end

if ARGV.length == 1
  pnr_validator(ARGV[0])
else
  puts "Usage: pnr_validator.rb <pnr>"
end