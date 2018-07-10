require 'pry'
require_relative 'braille_dictionary'
require_relative 'translator'
require_relative 'file_io'
# This confirms that the user entered exactly two parameters, the file to be
# converted, and the file the output will be stored in.
if ARGV.length != 2
  puts "We need exactly two parameters. Exiting program."
  exit;
end
# Creating our class objects
file_io = FileIo.new(ARGV[0], ARGV[1])
dictionary = BrailleDictionary.new()
translator = Translator.new(file_io)


file_io.write_to_output
# translator.write_to_output


# Assign a variable the number of characters in arg_2 and
# interpolate this value below
argv_1_char_length = file_io.open.size - 1
# argv_2_char_length = braille_file.size
puts "Created #{ARGV[1]} containing #{argv_1_char_length} characters"
