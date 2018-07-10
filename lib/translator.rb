require_relative 'braille_dictionary'
require_relative 'file_io'
class Translator
  attr_reader :input, :output, :translated_message, :dictionary

  def initialize
    @dictionary = BrailleDictionary.new()
  end

  def translate_file(file_class)
    message = file_class.read.chomp
    message.chars.map do |char|
      @dictionary.braille_dictionary[char]
    end
  end

  def write_to_output
    line_1 = collect_line_array(0)
    line_2 = collect_line_array(1)
    line_3 = collect_line_array(2)
    f = File.open(output, "w")
    line_1.each {|line| f.print(line)}
    f.print("\n")
    line_2.each {|line| f.print(line)}
    f.print("\n")
    line_3.each {|line| f.print(line)}
    f.close
  end

# Perhaps use recursion on this method or a loop where it keeps printing 40
# chars at a time until the excess_array is empty. Think about how to do This
# for each of your three seperate arrays in an alternating fashion.
# Maybe store each collection in slices in an array  of arrays and print them
# out in succession.
  def split_lines_over_80_char(line)
    excess_array = []
    if line.count > 40
      excess_array << collect_line_array[40..-1]
    # when excess_array == []
    end
  end

  # Condensed the three seperate array collections into one method, simply enter
  # 0-2 as line number to return an array of the braille characters for that line
  def collect_line_array(line_number)
    @translated_message.map do |element|
      element[line_number]
    end
  end

end
