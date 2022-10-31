def sub_string (word, array)
  word.downcase!
  array.each {|item| item.downcase!}
  puts array.count(word)
end

word = "quick"
dictionary = "The quick brown fox jumps over the lazy dog"

sub_string(word, dictionary.split)