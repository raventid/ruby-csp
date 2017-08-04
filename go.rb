class Go
  def initialize(subscriber)
    @subscriber = subscriber
  end
  
  # Subscriber is dynamic, so we cannot use this just as it is.
  def <!!
    write_to @subscriber
  end
end
