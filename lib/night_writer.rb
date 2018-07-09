require 'pry'
require_relative 'braille_dictionary'
require_relative 'translator'
# This confirms that the user entered exactly two parameters, the file to be
# converted, and the file the output will be stored in.
if ARGV.length != 2
  puts "We need exactly two parameters. Exiting program."
  exit;
end
# Creating our class objects
dictionary = BrailleDictionary.new()
translator = Translator.new(ARGV[0], ARGV[1])

translator.open_input_file_and_read_file
translator.translate_file

# binding.pry
# translator.split_lines_over_80_char(translator.collect_first_line_array)
translator.write_to_output


# Assign a variable the number of characters in arg_2 and
# interpolate this value below
argv_1_char_length = translator.open_input_file_and_read_file.size - 1
# argv_2_char_length = braille_file.size
puts "Created #{ARGV[1]} containing #{argv_1_char_length} characters"
