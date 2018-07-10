require './lib/reverse_braille_dictionary.rb'
require './lib/reverse_translator.rb'
require './lib/file_io.rb'
require 'minitest/pride'
require 'minitest/autorun'

class ReverseTranslatorTest < Minitest::Test

  def setup
    @input = "./test/input_test_reverse.txt"
    @output = "./test/output_test_reverse.txt"
  end

  def test_it_exists
    file_io = FileIo.new(@input, @output)
    translator = ReverseTranslator.new(file_io)

    assert_instance_of ReverseTranslator, translator
  end

end
