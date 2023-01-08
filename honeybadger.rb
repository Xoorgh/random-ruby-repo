#!/usr/bin/ruby

numbers = Array(1..100)

output = numbers.map { |v| v % 15 == 0 ? "Honeybadger!" : v % 3 == 0 ? "Honey" : v % 5 == 0 ? "Badger" :  v }

puts output