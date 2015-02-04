require 'pry'

# Class: ParagraphTruncator
#
# Cuts off a string after a user-designated number of characters.
#
# Attributes:
# + @para          - String: user-inputted string or "paragraph"
# + @characters    - Integer: desired character-length of the shorter, truncated paragraph
# + @phrase        - String: a phrase that comes after the break ex: '...' or 'Read More'
# + @short_para    - String: truncated @para
#
# Public Methods:
# + initialize  
# + cut_paragraph
# + final_truncation

class ParagraphTruncator
  
  
  # Public: .initialize
  # Gathers arguments and sets them to instance variables.
  # 
  # Parameters: 
  # + para                  - String: user-inputted string or "paragraph"
  # + characters_visible    - Integer: desired character-length of the shorter, truncated paragraph
  # + trunc_phrase          - String: a phrase that comes after the break ex: '...' or 'Read More'
  #
  # Returns:
  # String
  # Integer
  # Phrase
  #
  # State Changes:
  # Forces parameters to certain types: String, Integer, String
  
  
  #Consider re-writing  with Options Hash later
  # => options is a Hash, with the following keys: para, characters_visible, trunc_phrase
  def initialize(para, characters_visible, trunc_phrase)
    @para = para.to_s
    @characters = characters_visible.to_i
    @phrase = trunc_phrase.to_s

  end
  
  # Public: .cut_paragraph
  # Slices the @para String by a certain number of @characters, starting at String's index 0.
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # String
  #
  # State Changes:
  # None.
  
  def cut_paragraph
    @short_para = @para.byteslice(0, @characters)
  end
  
  # Public: .final_truncation
  # Outputs a formatted String containing the @short_para String followed by a user-desired truncation @phrase.
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # String
  #
  # State Changes:
  # None.
  
  def final_truncation
    puts "#{@short_para} #{@phrase}"
  end

end