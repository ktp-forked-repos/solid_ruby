module UniversalHelper
  def parse
  end

  def launch_missile
  end

  def log_message
  end

  def compress_images
  end
end

class Client
  include UniversalHelper

  # Gets all unrelated methods
end


p Client.new.methods
