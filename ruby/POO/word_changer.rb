FILENAME = ARGV[0]
WORD_TO_CHANGE= ARGV[1]
NEW_WORD = ARGV[2]

def change_words
  contents = File.read(FILENAME)
  #Remove punctuation and newlines, and convert all string to lowercase
  contents = contents.gsub(Regexp.new('\b'+WORD_TO_CHANGE+'\b'), NEW_WORD) #gsub reemplaza el primer argumento con el segundo argumento
  File.open(FILENAME,"w") do |f|
    f << contents
  end
end

change_words
