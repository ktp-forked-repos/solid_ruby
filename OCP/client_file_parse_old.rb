class ClientFileParser

  attr_reader :file

  def initialize(file)
    @file = file
  end

  def run
    file_contents = if File.extname(file) == ".csv"
      parse_csv
    elsif File.extname(file) == ".xml"
      parse_xml
    else File.extname(file) == ".json"
      parse_json
    end
    file_contents
  end 

  private

  def parse_csv
    p "Parsing the csv"
  end

  def parse_xml
    p "Parsing the xml"
  end

  def parse_xml
    p "Parsing the json"
  end
end

ClientFileParser.new(File.open('/Users/rajeevnb/something.csv')).run
