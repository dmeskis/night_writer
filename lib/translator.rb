require_relative 'braille_dictionary'

class Translator
  attr_reader :argv_1, :argv_2, :translated_message

  def initialize(argv_1, argv_2)
    @argv_1 = argv_1
    @argv_2 = argv_2
    @translated_message = []
  end

  def open_file(file)
    File.open(file)
  end

  def read_file

  end


end
