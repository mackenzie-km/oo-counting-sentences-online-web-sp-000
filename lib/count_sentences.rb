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
self.replace('!') "$"
self.replace('.') "$"
self.replace('?') "$"
splitted.split("$")
splitted.count{|sentence| (sentence? || question? || exclamation?) && !nil}
binding.pry 
end 

end