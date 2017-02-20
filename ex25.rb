module Ex25

  # Breaks the words
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sort the words
  def Ex25.sort_words(words)
    return words.sort
  end

  # Print first word after shifting off
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  # Print last word after popping off
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  # Return sorted words from a sentence
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  # Print first and last words of a sentence
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end
