class AssemblyLine
  BASE_RATE = 221.0
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4 
      get_percent
    when 5..8
      get_percent(90)
    when 9
      get_percent(80)
    else
      get_percent(77)
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private
  def get_percent(percent = 100)
    num = ((@speed * BASE_RATE) * percent) / 100
    "#{'%.1f' % num}".to_f
  end
end
