class ClientParser

  attr_reader :parser

  def initialize(parser)
    @parser = parser
  end

  def parse
    parser.parse
  end
end


class XMLParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    raise "parsing failed because its xml, common seriously"
  end
end

class JSONParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    p "parsing json stuff"
  end
end


ClientParser.new(JSONParser.new("/Users/rajeevnb/something.csv")).parse
ClientParser.new(XMLParser.new("/Users/rajeevnb/something.csv")).parse
