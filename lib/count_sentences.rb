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
splitted = self.replace('!',' ').replace('.',' ').replace('?',' ').split()
binding.pry 
splitted.count{|sentence| (sentence? || question? || exclamation?) && !nil}

end 

end