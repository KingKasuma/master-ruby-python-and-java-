require 'yaml'
require_relative 'file_reader'

class YamlReader < FileReader
  def read
    puts "Reading file using YML file reader"
    contents = YAML.load_file(@file )
    puts contents
  end
end
