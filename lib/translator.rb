require_relative 'braille_dictionary'

class Translator
  attr_reader :input, :output, :translated_message, :dictionary

  def initialize(input, output)
    @input = input
    @output = output
    @translated_message = []
    @dictionary = BrailleDictionary.new()
  end

  def open_input_file_and_read_file
    File.open(input) {|f| f.read() }
  end

  def translate_file
    message = open_input_file_and_read_file
    message.chars.each do |char|
      @translated_message << @dictionary.braille_dictionary[char]
    end
    @translated_message
  end

  def write_to_output
    line_1 = collect_first_line_array
    line_2 = collect_second_line_array
    line_3 = collect_third_line_array
    f = File.open(output, "w")
    line_1[0].each {|line| f.print(line)}
    f.print("\n")
    line_2[0].each {|line| f.print(line)}
    f.print("\n")
    line_3[0].each {|line| f.print(line)}
    f.close
  end

  # Create three methods that collect three different arrays based on which line
  # they belong on.
  def collect_first_line_array
    first_line_array = []
    first_line_array << @translated_message.map do |element|
      element[0] unless element == nil
    end
    first_line_array[0].pop
    first_line_array
  end

  def collect_second_line_array
    second_line_array = []
    second_line_array << @translated_message.map do |element|
      element[1] unless element == nil
    end
    second_line_array[0].pop
    second_line_array
  end

  def collect_third_line_array
    third_line_array = []
    third_line_array << @translated_message.map do |element|
      element[2] unless element == nil
    end
    third_line_array[0].pop
    third_line_array
  end


end
