require_relative 'file_reader'
require_relative 'csv_reader'
require_relative 'yaml_reader'
require_relative 'json_reader'

#FilerReader.new(ARGV[0]).read #ARGV es para poder agarrar argumentos o parametros desde la consola
#CsvReader.new(ARGV[0]).read
#YamlReader.new(ARGV[0]).read
#JsonReader.new(ARGV[0]).read

FILENAME = ARGV[0]

def file_extension(filename)
  filename.split('.').last
end

def reader_class
  ext = file_extension(FILENAME)
  return CsvReader if ext == 'csv'
  return YamlReader if ext == 'yml'
  return JsonReader if ext == 'json'
  FileReader
end

reader_class.new(FILENAME).read
