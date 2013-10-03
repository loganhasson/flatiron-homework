def rev_in_place(sentence)
  backwards = sentence.split.map { |word| word.reverse }.join(' ')
end