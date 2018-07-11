require_relative 'braille_dictionary'
require_relative 'file_io'
require "pry"

class Translator
  attr_reader :input, :output, :translated_message, :dictionary

  def initialize(file_class)
    @dictionary = BrailleDictionary.new()
    @file_class = file_class
  end

  def translate_file(file_class)
    message = file_class.read.split.join(" ")
    message.chars.map do |char|
      @dictionary.braille_dictionary[char]
    end

  end

# Perhaps use recursion on this method or a loop where it keeps printing 40
# chars at a time until the excess_array is empty. Think about how to do This
# for each of your three seperate arrays in an alternating fashion.
# Maybe store each collection in slices in an array  of arrays and print them
# out in succession.
  def split_lines_over_80_char
   line_1_array = collect_line_array(0)
   line_2_array = collect_line_array(1)
   line_3_array = collect_line_array(2)
   split_lines = []
   while line_1_array && line_2_array && line_3_array != []
     40.times do |i|
       split_lines << line_1_array.shift
     end
     split_lines << "\n"
     40.times do |i|
       split_lines << line_2_array.shift
     end
     split_lines << "\n"
     40.times do |i|
       split_lines << line_3_array.shift
     end
     split_lines <<"\n"
   end
   split_lines.compact
 end



  # Condensed the three seperate array collections into one method, simply enter
  # 0-2 as line number to return an array of the braille characters for that line
  def collect_line_array(line_number)
    translate_file(@file_class).map do |element|
      element[line_number]
    end
  end

end
