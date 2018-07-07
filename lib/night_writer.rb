require_relative 'braille_dictionary'
dictionary = BrailleDictionary.new()

# This confirms that the user entered exactly two parameters, the file to be
# converted, and the file the output will be stored in.
if ARGV.length != 2
  puts "We need exactly two parameters. Exiting program."
  exit;
end

argv_1 = ARGV[0]
argv_2 = ARGV[1]

# Opening our message file into a variable
message_file = File.open(ARGV[0]) {|f| f.read() }
# Write code to convert contents of our message_file to braille using our
# dictionary class and methods. Then write this into our braille file.

braille_file = File.open(ARGV[1], "w") {|f| f.write(message_file) }



# Assign a variable the number of characters in arg_2 and
# interpolate this value below
arg_1_char_length = message_file.size
arg_2_char_length = braille_file.size
puts "Created #{arg_2} containing #{arg_1_char_length} characters"
