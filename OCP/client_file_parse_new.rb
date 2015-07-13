class ClientFileParser

  attr_reader :parser

  def initialize(parser)
    @parser = parser
  end

  def run
    parser.parse
  end 
end

class XMLParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p 'parsing the xml'
  end
end

class JSOnParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p 'parsing the JSON'
  end
end

class CSVParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p 'parsing the csv'
  end
end

ClientFileParser.new(CSVParser.new('/Users/rajeevnb/something.csv')).run
