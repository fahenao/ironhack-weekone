
class Decision
  include Tools
  
  def puts_text
    if output == :screen
      puts text
    end
  end

  def evaluate_text  
    evaluate
  end

  def log_text
    log
  end

end


module Tools

  def evaluate_text
    if output == :logfile
      IO.write("log.log", text)
    elsif output == :message_queue
      Queue.put(text)
    elsif output == :json_endpoint
      HTTP.post(text)
    end
  end


  def log
    if output == :logstash
      Logstash.add(text)
    elsif output == :logwatcher
      LogWatch.new.post(text)    
    end
  end


end