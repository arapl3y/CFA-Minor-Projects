filename = ARGV.first

puts "I will begin reading the file"

target = open(filename)

print target.read
