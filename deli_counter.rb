# Write your code here.
require 'pry'

def line(peeps_list)
  # binding.pry
  if peeps_list.empty?
    puts "The line is currently empty."
    return
  end

  line_display = "The line is currently:"
  peeps_list.each_with_index do |name, index|
    line_display.concat(" #{index + 1}. #{name}")
  end
  puts line_display

end

def take_a_number(peeps_list, name)
  new_peeps_list = peeps_list
  new_peeps_list.push(name)
  puts "Welcome, #{name}. You are number #{new_peeps_list.length} in line."
  new_peeps_list
end

def now_serving(peeps_list)
  if peeps_list.empty?
    puts "There is nobody waiting to be served!"
    return
  end

  puts "Currently serving #{peeps_list.shift}."
  peeps_list
  
end

