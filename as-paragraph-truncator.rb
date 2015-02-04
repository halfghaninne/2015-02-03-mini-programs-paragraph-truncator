require 'pry'
require 'active_support/all'

# Class: AsParagraphTruncator
#
# Cuts off a string after a user-designated number of characters.
#
# Attributes:
# + @para          - String: user-inputted string or "paragraph"
#
# Public Methods:
# + initialize  

class AsParagraphTruncator

  
  # Public: .initialize
  # Gathers arguments and sets them to instance variables.
  # 
  # Parameters: 
  # + para          - String: user-inputted string or "paragraph"
  # + word_count    - Integer: desired character-length of the shorter, truncated paragraph
  #
  # Returns:
  # String
  #
  # State Changes:
  # Forces arguments to certain types: String, Integer
  
  def initialize(para, word_count)
    @para = para.to_s
    word_count = word_count.to_i
    
    puts @para.truncate_words(word_count)
    # How can I avoid having this puts statement here; how can I move this to as-driver?
    
  end

end

