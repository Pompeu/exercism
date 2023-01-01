class LogLineParser

  def initialize(line)
    @line = line
    @log_types = ['[ERROR]:','[WARNING]:', '[INFO]:']
  end

  def message
    @line.sub(get_log_types, '').delete("\t\r\n").strip
  end

  def log_level
    get_log_types.delete('[]:').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  def get_log_types 
    ['[ERROR]:','[WARNING]:', '[INFO]:'].filter{ |e| @line.include? e }.first
  end
end
