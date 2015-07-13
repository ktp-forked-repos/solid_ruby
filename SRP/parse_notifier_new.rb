class ParseNotifier

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def notify
    file_contents = CSVParser.new(filepath).parse
    send_notification_with(file_contents)
  end

  private

  def send_notification_with(file_contents)
    ParseMailer.send_notification(file_contents)
  end
end

class CSVParser

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def parse
    File.read(filepath).split(",")
  end
end

class ParseMailer 

  class << self
    def send_notification(file_contents)
      p "Sends notification with #{file_contents}"
    end
  end
end


ParseNotifier.new("/Users/rajeevnb/something.csv").notify
