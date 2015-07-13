class ParseNotifier

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def notify
    file_contents = parse_contents_from(filepath)
    send_notification_with(file_contents)
  end

  private

  def parse_contents_from(filepath)
    File.read(filepath).split(",")
  end

  def send_notification_with(file_contents)
    ParseMailer.send_notification(file_contents)
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
