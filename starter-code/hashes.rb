##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count(str)
  letters = Hash.new(0)
  str.downcase.split("").each{|char| letters[char]+=1}
  letters
end
## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
def word_count(str)
  words_count = Hash.new(0)
  str = str.downcase
  str.gsub!(/[^a-z ]/, "")
  str.split(" ").each{|word| words_count[word]+=1}
  words_count
end
## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
def most_frequent_word(str)
  words = word_count(str)
  words.sort_by{|key, value| value}[-1][0]
end
