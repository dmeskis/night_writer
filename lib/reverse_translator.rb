require_relative 'reverse_braille_dictionary'
require_relative 'file_io'

class ReverseTranslator

  def initialize(file_class)
    @dictionary = ReverseBrailleDictionary.new()
    @file_class = file_class
  end

  def braille_to_string
    f = @file_class.open()
    f.read()
  end

  # This creates an array of each line, the first element of each set of 3
  # arrays creates a key in the dictionary corresponding to a letter
  def get_braille_arrays
    string = braille_to_string
    lines = string.scan(/.{80}/)
    pairs = lines.map do |string|
      string.scan(/../)
    end
  end


  def collect_line_array(line_number)

  end

end
