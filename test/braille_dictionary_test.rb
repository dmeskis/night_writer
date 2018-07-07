require './lib/braille_dictionary.rb'
require 'minitest/autorun'
require 'minitest/pride'

class BrailleDictionaryTest < Minitest::Test

  def test_all_braille_translations_are_unique
    dictionary = BrailleDictionary.new()
    assert dictionary.braille_dictionary.values.uniq
  end

end
