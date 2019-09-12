require 'pry'

class String

  def sentence?
    if "HI.".end_with?(".")
      true
    # "HI!".end_with?(".")
    else
      false
    end
  end

  def question?
    "What's your name?".end_with?("?")
    "What's your name?".end_with?("!")
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