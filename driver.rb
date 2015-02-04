require 'pry'
require_relative 'paragraph-truncator'

class Driver
  
  def initialize
    
    puts "Please enter the paragraph you would like to truncate:"
    para = gets.chomp.to_s
    
    puts "How many characters would you like to remain visible?"
    characters_visible = gets.chomp.to_i
    
    puts "How would you like the paragraph to be truncated? (ex: '...' or 'Read More' or 'Click through')"
    trunc_phrase = gets.chomp.to_s
    
    return_para = ParagraphTruncator.new(para, characters_visible, trunc_phrase)
    return_para.cut_paragraph
    puts return_para.final_truncation
    
    # the puts method above returns the correct output, letting me know that my object's method final_truncation is working correctly
    #
    # I tried to display that result in a more human way with a placeholder variable:
    #
    #     a = return_para.final_truncation
    #
    #     puts "Here is your truncated paragraph: #{a}"
    #
    # But I'm getting an empty space where that variable should be.

  end
  
end
