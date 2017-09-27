class Go
  def initialize(subscriber, channel)
    @subscriber = subscriber
    @channel = channel
  end

  # Subscriber is dynamic, so we cannot use this just as it is.
  def <!!
    write_to @subscriber
  end

  # Pushes data to channel
  def !!>
    write_to @channel
  end
end
