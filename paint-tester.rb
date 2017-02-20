require 'paint'
require 'terminal-table'



rows = []

rows << [Paint['One', :red], '1']

rows << [Paint['Two', :blue], '2']

rows << [Paint['Three', :yellow], '3']

rows << [Paint['Four', :green], '4']

table = Terminal::Table.new :rows => rows

puts table
