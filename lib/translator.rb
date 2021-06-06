require 'yaml'
require 'pry'
def load_library(file_path)
  # code goes here
   emoticons = YAML.load_file(file_path)
  emote_hash = {} 
  
  emoticons.each do|key, value|
    emote_hash[key] = {} 
    emote_hash[key][:english]= value [0]
    emote_hash[key][:japanese]= value [1]
    

    
end
emote_hash

end
def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end