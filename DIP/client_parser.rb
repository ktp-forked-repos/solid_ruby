class ClientFileParser
  attr_reader :parser

  def initialize(parser)
    @parser = parser
  end

  def parse
    parser.parse
  end
end

class XmlParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p "parse xml"
  end
end

class CsvParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p "parse csv"
  end
end


ClientFileParser.new(XmlParser.new("/Users/rajeevnb/something.csv")).parse
