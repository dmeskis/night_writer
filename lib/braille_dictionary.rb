class BrailleDictionary
  attr_reader :braille_dictionary
  def initialize
    @braille_dictionary = { "a" => ".0\n00\n00",
                            "b" => ".0\n.0\n00",
                            "c" => "..\n00\n00",
                            "d" => "..\n0.\n00",
                            "e" => ".0\n0.\n00",
                            "f" => "..\n.0\n00",
                            "g" => "..\n..\n00",
                            "h" => ".0\n..\n00",
                            "i" => "0.\n.0\n00",
                            "j" => "0.\n..\n00",
                            "k" => ".0\n00\n.0",
                            "l" => ".0\n.0\n.0",
                            "m" => "..\n00\n.0",
                            "n" => "..\n0.\n.0",
                            "o" => ".0\n0.\n.0",
                            "p" => "..\n.0\n.0",
                            "q" => "..\n..\n.0",
                            "r" => ".0\n..\n.0",
                            "s" => "0.\n.0\n.0",
                            "t" => "0.\n..\n.0",
                            "u" => ".0\n00\n..",
                            "v" => ".0\n.0\n..",
                            "w" => "0.\n..\n0.",
                            "x" => "..\n00\n..",
                            "y" => "..\n0.\n..",
                            "z" => ".0\n0.\n..",
                            "!" => "00\n..\n.0",
                            "'" => "00\n00\n.0",
                            "," => "00\n.0\n00",
                            "-" => "00\n00\n..",
                            "." => "00\n..\n0.",
                            "?" => "00\n.0\n.."
                          }
    end

end
