require 'pry'
require 'active_support/all'

class AsParagraphTruncator

  def initialize(para, word_count)
    @para = para.to_s
    word_count = word_count.to_i
    
    puts @para.truncate_words(word_count)
    # How can I avoid having this puts statement here; how can I move this to as-driver?
    
  end

end

