#!/usr/bin/ruby
require "colorize"

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
length = 30
stripe = length/3

3.times do |time|
  color = ""  
  case time
  when 0
    color = :black
  when 1
    color = :red
  when 2
    color = :yellow
  end
  stripe.times do
    puts b(color, width)
  end
end
