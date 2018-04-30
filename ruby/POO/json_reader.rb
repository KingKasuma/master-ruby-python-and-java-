require 'json'
require_relative 'file_reader'

class JsonReader < FileReader
  def read
    puts "Reading file using JSON file reader."
    json_file = File.read(@file)
    contents = JSON.load(json_file)
    puts contents
  end
end
