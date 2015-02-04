require 'pry'

class ParagraphTruncator
  
  #Consider re-writing  with Options Hash later
  # => options is a Hash, with the following keys: para, characters_visible, trunc_phrase
  def initialize(para, characters_visible, trunc_phrase)
    @para = para.to_s
    @characters = characters_visible.to_i
    @phrase = trunc_phrase.to_s

  end
  
  def cut_paragraph
    @short_para = @para.byteslice(0, @characters)
  end
  
  def final_truncation
    puts "#{@short_para} #{@phrase}"
  end

end