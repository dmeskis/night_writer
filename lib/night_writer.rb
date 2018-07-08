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

message_translated = []
message_file.chars.each do |char|
  message_translated << dictionary.braille_dictionary[char]
  # require 'pry' ; binding.pry
end
# Write code to convert contents of our message_file to braille using our
# dictionary class and methods. Then write this into our braille file.
# converted_to_braille = message_file.chars.each do |char|
#                           if char == dictionary.braille_dictionary.keys
#                             char = dictionary.braille_dictionary.value
#                             require 'pry' ; binding.pry
#                           else
#                           end
#                         end

# converted_content message_file

braille_file = File.open(ARGV[1], "w") {|f| f.write(message_translated.join) }



# Assign a variable the number of characters in arg_2 and
# interpolate this value below
argv_1_char_length = message_file.size - 1
argv_2_char_length = braille_file.size
puts "Created #{argv_2} containing #{argv_1_char_length} characters"
