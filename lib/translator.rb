require "yaml"
require 'pry'

def load_library(file_path)
  file = YAML.load_file(file_path)
  emoticons = {}
  get_meaning = {}
  get_emoticon = {}

  file.each do |meaning, faces|
    faces.each do |emoji|
      get_meaning[emoji] = meaning
    end #faces.each
    get_emoticon[faces[0]] = faces[1]
  end #file.each
  emoticons["get_meaning"] = get_meaning
  emoticons["get_emoticon"] = get_emoticon
  emoticons
end #method

def get_japanese_emoticon(file_path, emoticon)
  dictionary = load_library(file_path)
  binding.pry
end

def get_english_meaning
  # code goes here
end

load_library('./lib/emoticons.yml')
