require 'sequel'

for i 1..100
    begin
        db = Sequel.connect(adapter: :postgres, user: ENV['PG_USER'], password: ENV['PG_PASS'], host: ENV['PG_HOST'], port: ENV['PG_PORT'], database: ENV['PG_DB'])
        db.run('SELECT 1')
    rescue Sequel::DatabaseError => e
        puts "Database connection error: #{e.message}"
    end
    sleep 1
end