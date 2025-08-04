class LogLineParser
  def initialize(line)
    @line = line.gsub(/[\n\r]/, '')
  end

  def message
    @line.gsub("[#{log_level.upcase}]", '').gsub(':', '').strip
  end

  def log_level
    @line.strip.slice(1, @line.index("]")-1).downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
