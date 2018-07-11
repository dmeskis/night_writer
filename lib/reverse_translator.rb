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
    lines = string.scan(/.{1,80}/)
    pairs = lines.map do |string|
      string.scan(/../)
    end
  end

  # Scan the arrays you got into groups of 3 to prep for zip method
  def group_braille_arrays
    get_braille_arrays.each_slice(3).to_a
  end

  def zip_grouped_braille_arrays
    zipped_arrays = group_braille_arrays
    zipped_arrays.map do |array|
      array[0].zip(array[1], array[2])
    end
    zipped_arrays[0]
  end

  # compared our zipped braiLLe arrays to our ditionary
  def get_final_array_before_translation
    array = zip_grouped_braille_arrays
    array[0].zip(array[1], array[2])
  end

  #maybe just shovel into array and then .join
  # def translate
  #   translated_string = ""
  #   array = get_final_array_before_translation
  #   # binding.pry
  #   translated_string << array.each do |braille|
  #     # binding.pry
  #     @dictionary.braille_dictionary[braille]
  #   end
  # end


end
