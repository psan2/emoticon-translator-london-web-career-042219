require "yaml"
require 'pry'

def load_library(file_path)
  file = YAML.load_file(file_path)
  emoticons = {}
  get_meaning = {}
  get_emoticon = {}

  file.each do |meaning, faces|
    faces.each do |emoji|
      binding.pry
    end
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library('./lib/emoticons.yml')
