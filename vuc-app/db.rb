require 'singleton'
require 'sequel'

class DB
    include Singleton
    
    def initialize
        begin
            @db ||= Sequel.connect(adapter: :postgres, user: ENV['PG_USER'], password: ENV['PG_PASS'], host: ENV['PG_HOST'], port: ENV['PG_PORT'], database: ENV['PG_DB'])
        rescue Sequel::DatabaseError => e
            raise "Database connection error: #{e.message}"
        end
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