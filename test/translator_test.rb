require './lib/translator.rb'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/message.txt'
require './lib/braille.txt'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new("", "")

    assert_instance_of Translator, translator
  end

  def test_we_can_open_a_file
    message = File.open('message.txt')
    translator = Translator.new(message.txt, braille.txt)
  end

end
