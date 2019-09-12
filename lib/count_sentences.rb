require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else self.end_with?("!")
      return false
  end

  def exclamation?
    "Hi, my name is Sophie!".end_with?("!")
    "Hi, my name is Sophie.".end_with?("!")
  end

  def count_sentences
    "First sentence. Second sentence. Is this the third sentence?".scan(/[^\?.!]+[\?!.]/).map(&:strip).count
    "First sentence".scan(/[^.!?]+[\.?!]/).map(&:strip).count
    "First senctence. Second sentence. Is this the third sentence? I like this sentence!".scan(/[^\.?!]+[\.?!]/).map(&:strip).count
  end
end