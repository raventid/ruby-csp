# ruby-csp
Communicating sequential process library and extension for Ruby.

Current problem I'm trying to solve is a decision about a parking place. If we use MRI threads we should handle GIL and park coroutines with one active thread(no idea how to do it). We might target Jruby and implement coroutines with it in mind. Last idea I have is to wait for Guilds and use them to create poll for coroutines.

Eventmachine is also a nice solution (ClojureScript use only one thread for core.async, but Eventmachine is not a maintsream runtime dependencie, which makes this approach fragile). Also it might be fruitfull to follow Crystal approach and to use libevent/libev/libuv wrapped with main fiber, aka reactor, and spawn task in another fibers(nice for IO). Libev has Nio4R wrapper which is nice(Ruby wrapper -> JRuby compatibility, MRI aware, clean interface). This might be the way to go.
