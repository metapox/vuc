require 'singleton'

class DB
    include Singleton
    
    def initialize
        @count = 0
    end

    def increment
        @count += 1
    end

    def display
        # puts process id and count
        "Process ID: #{Process.pid} Count: #{@count}"
    end
end