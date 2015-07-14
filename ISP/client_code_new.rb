# small interfaces
module Parser
  def parse
  end
end

module War
  def launch_missile
  end
end

module Logger
  def log_message
  end
end

module ImageHelper
  def compress_images
  end
end

class Client
  include Parser

  # includes particular interface
end


p Client.new.methods
