require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
   self.end_with?("?")
  end

  def exclamation?
   self.end_with?("!")
  end

require "pry"
  def count_sentences
    #Requirements of a sentence: starts with captial letter. Ends with exclamation point, question mark, or period. 
    #Steps to accomplish this:
    #1 - Split things that end in ". " or "? " or "! " - this will leave complete sentences isolated (or just one sentence - if there's nothing ending in that)
    #2 - On splitted pieces, check to see if any of the methods above are true sentence? || question? || exclamation? 
    #3 - If true - then count. If not true, then don't count. 
    #Issue: It is erasing the punctuation!
  isolated_sentences = self.split(/(?<=[(?!.]\s{1})/)
  isolated_sentences.count{|sentence| sentence? || question? || exclamation?}
  binding.pry
end 

end