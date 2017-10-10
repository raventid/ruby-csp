# Stuck. Need interface example.
# How to make http request asynchronous with CSP?

ch = Channel.new

spawn do
  ch.write_async Faraday.get("https://google.com")
end

# read is blocking, read_async - non-blocking
page.read(ch)
