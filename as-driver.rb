require 'pry'
require 'active_support/all'
require_relative 'as-paragraph-truncator'

# Class: AsDriver
#
# Gathers user input to use as arguments in a new AsParagraphTruncator object.
#
# Attributes:
# None.
#
# Public Methods:
# + initialize

class AsDriver
  
  def initialize
    
    puts "Please enter the paragraph you would like to truncate:"
    para = gets.chomp.to_s
    
    puts "How many words would you like to remain visible?"
    word_count = gets.chomp.to_i
    
    # puts "How would you like the paragraph to be truncated? (ex: '...' or 'Read More' or 'Click through')"
    # trunc_phrase = gets.chomp.to_s
    
    return_para = AsParagraphTruncator.new(para, word_count)

  end
  
end

