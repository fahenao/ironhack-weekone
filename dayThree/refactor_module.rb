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