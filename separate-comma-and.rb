new_array = []
array.each_with_index do |item, index|
  if index == array.length - 1
    new_item = 'and ' + item
    new_array << new_item
  elsif index == array.length - 2
    new_item = item + ' '
    new_array << new_item
  else
    new_item = item + ', '
    new_array << new_item
  end
end

new_array = array.pop

puts new_array

# ----- different method ----- #

popped_name = array.popped_na
array = array.join(', ')

puts popped_name
puts array

array = array + ' and ' + popped_name

puts array

# ----- different method ----- #

puts array.map { |e| e + ' rules' }
