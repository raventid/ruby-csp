# ruby-csp
Communicating sequential process library and extension for Ruby.

Current problem I'm trying to solve is a decision about parking place. If we use MRI threads we should handle GIL and park coroutines with one active thread(no idea how to do it). We might target Jruby and implement coroutines with it in mind. Last idea I have is to use wait for Guilds and use them to create poll for coroutines.

Eventmachine is also a nice solution (ClojureScript use only one thread for core.async, but Eventmachine is not a maintsream runtime dependencie, which makes this approach fragile).
