require 'sqlite3'

puts "To access your Blessed and Buckets database"
puts "Please enter your username!"
puts "If you do not have a username this is also the time to create one"
puts "What is your user name?"
username = gets.chomp

database = SQLite3::Database.new("#{username}.db")

create_user_table = <<-SQL
	CREATE TABLE user(
		id INTEGER PRIMARY KEY,
		username VARCHAR(30),
		first_name VARCHAR(20),
		last_name VARCHAR(20)
		);
SQL

create_blessings_table = <<-SQL
	CREATE TABLE blessings(
		id INTEGER PRIMARY KEY,
		list_blessing VARCHAR(255)
		);
SQL

create_bucket_list_table = <<-SQL
	CREATE TABLE buckets(
		id INTEGER PRIMARY KEY,
		list_bucket VARCHAR(255)
		);
SQL

