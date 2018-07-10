require './lib/reverse_braille_dictionary.rb'
require 'minitest/pride'
require 'minitest/autorun'

class ReverseBrailleDictionaryTest < Minitest::Test

  def test_all_braille_translations_are_unique
    dictionary = ReverseBrailleDictionary.new()
    assert dictionary.braille_dictionary.values.uniq
  end

end
