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
  
 emote_library =  load_library(file_path)
 emoticon = library
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  # code goes here
   emote_library =  load_library(file_path)
end