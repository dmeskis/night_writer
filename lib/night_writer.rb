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
translator = Translator.new()

x = translator.translate_file(file_io)
binding.pry
translator.translate_file
# translator.split_lines_over_80_char(translator.collect_line_array(1))
translator.write_to_output


# Assign a variable the number of characters in arg_2 and
# interpolate this value below
argv_1_char_length = translator.open_input_file_and_read_file.size - 1
# argv_2_char_length = braille_file.size
puts "Created #{ARGV[1]} containing #{argv_1_char_length} characters"
