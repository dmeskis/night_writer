require_relative 'braille_dictionary'

class Translator
  attr_reader :input, :output, :translated_message, :dictionary

  def initialize(input, output)
    @input = input
    @output = output
    @translated_message = []
    @dictionary = BrailleDictionary.new()
  end

  def open_file_and_read_file(file)
    File.open(file) {|f| f.read() }
  end

  def translate_file
    message = open_file_and_read_file(input)
    message.chars.each do |char|
      @translated_message << @dictionary.braille_dictionary[char]
    end
    @translated_message
  end

  def write_to_output
    File.open(output, "w") {|f| f.write(@translated_message.join)}
  end

  # Create three methods that collect three different arrays based on which line
  # 


end
