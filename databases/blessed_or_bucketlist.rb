require 'sqlite3'

# def add_to_blessings(db, comment)
# 	db.execute("INSERT INTO blessings (comment) VALUES (?)", [comment])
# end

# def add_to_buckets(db, comment)
# 	db.execute("INSERT INTO buckets (comment) VALUES (?)", [comment])
# end

def add_to_table(db, table, column, comment)
	db.execute("INSERT INTO #{table} (#{column}) VALUES (?)", [comment])
end

# def update_blessings(db, new_comment, where_id)
# 	db.execute("UPDATE blessings SET comment='#{new_comment}' WHERE id='where_id'")
# end

# def update_buckets(db, new_comment, where_id)
# 	db.execute("UPDATE buckets SET comment='#{new_comment}' WHERE id='where_id'")
# end

def update(db, table, column, new_comment, where_id)
	db.execute("UPDATE #{table} SET #{column}='#{new_comment}' WHERE id='where_id'")
end

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

