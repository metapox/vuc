require 'singleton'
require 'sequel'

class DB
    include Singleton
    
    def initialize
        @db ||= Sequel.connect(adapter: :postgres, user: 'root', password: 'password', host: 'pgcat', port: 6432, database: 'db')
    end

    def connection
        @db
    end

    # def increment
    #     @count += 1
    # end

    # def display
    #     # puts process id and count
    #     "Process ID: #{Process.pid} Count: #{@count}"
    # end
end