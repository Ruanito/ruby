class AssemblyLine
  PRODUCE_PER_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production = PRODUCE_PER_HOUR * @speed
    
    if @speed >= 5 && @speed <= 8
      production *= 0.9
    elsif @speed == 9
      production *= 0.8
    elsif @speed == 10
      production *= 0.77
    end

    production
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i.floor
  end
end
