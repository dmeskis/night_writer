require_relative 'reverse_braille_dictionary'
require_relative 'file_io'

class ReverseTranslator

  def initialize(file_class)
    @dictionary = ReverseBrailleDictionary.new()
    @file_class = file_class
  end

  def collect_line_array
    
  end

end
