require 'sqlite3'

def add_to_blessings(db, comment, rating)
	db.execute("INSERT INTO blessings (bless, stars, date_entered) VALUES (?, ?, ?)", [comment, rating, current_date])
end

def add_to_buckets(db, comment, rating)
	db.execute("INSERT INTO buckets (bucket, stars, date_entered) VALUES (?, ?, ?)", [comment, rating, current_date])
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

def view_blessings(db)
	db.execute("SELECT bless, stars, date_entered FROM blessings")
end

def view_buckets(db)
	db.execute("SELECT bucket, stars, date_entered FROM buckets")
end

def view_both(db)
	viewing_both_tables = <<-SQL
		SELECT blessings.bless, blessings.stars, buckets.bucket, buckets.stars
		FROM user
		INNER JOIN blessings ON user.blessings_id = blessings.id
		INNER JOIN buckets ON user.buckets_id = buckets.id
	SQL

	db.execute(viewing_both_tables)
end

def who_am_i(db)
	db.execute("SELECT username, first_name, last_name FROM user")
end

def menu
	puts "What would you like to do?"
	puts "ADD to your blessings/buckets list?"
	puts "UPDATE to your blessings/buckets list?"
	puts "VIEW one or more lists?"
	puts "DELETE an item from a list?"
	puts "SEE menu again?"
	puts "or you're 'DONE' here?"
end

puts "To access your Blessed and Buckets database"
puts "Please enter your username!"
puts "If you do not have a username this is also the time to create one"
puts "What is your user name?"
username = gets.chomp


database = SQLite3::Database.new("#{username}.db")



$current_date = database.execute("SELECT date('now')")

create_user_table = <<-SQL
	CREATE TABLE user(
		id INTEGER PRIMARY KEY,
		username VARCHAR(30),
		first_name VARCHAR(20),
		last_name VARCHAR(20),
		blessings_id INT,
		buckets_id INT,
		FOREIGN KEY (blessings_id) REFERENCES blessings(id),
		FOREIGN KEY (buckets_id) REFERENCES buckets(id)
		)
SQL

create_blessings_table = <<-SQL
	CREATE TABLE blessings(
		id INTEGER PRIMARY KEY,
		bless VARCHAR(255),
		date_entered DATE,
		stars INT
		)
SQL

create_bucket_list_table = <<-SQL
	CREATE TABLE buckets(
		id INTEGER PRIMARY KEY,
		bucket VARCHAR(255)
		date_entered DATE,
		stars INT
		)
SQL

database.execute(create_user_table)
database.execute(create_blessings_table)
database.execute(create_bucket_list_table)

menu

user_input = ""
while user_input != 'DONE'

	user_input = gets.chomp.upcase

	if user_input == "ADD"
		puts "Which table: blessings[1] or buckets[2]?"
		table_wanted = gets.chomp.to_i

		if table_wanted == 1
			puts "What is the comment?"
			comment = gets.chomp

			puts "How many stars is this in relevant to you?"
			rate = gets.chomp.to_i

			add_to_blessings(database, comment, rate)
		elsif table_wanted == 2
			puts "What is the comment?"
			comment = gets.chomp

			puts "How many stars is this in relevant to you?"
			rate = gets.chomp.to_i

			add_to_buckets(database, comment, rate)
		end
	elsif user_input == "UPDATE"
		
	elsif user_input == "VIEW"
		puts "Which table would you like to view?"
		puts "Your bucket list[1], blessings list[2], or both[3]?"

		table_wanted = gets.chomp.to_i
	
		if table_wanted == 1
			view_buckets
		elsif table_wanted == 2
			view_blessings
		elsif table_wanted == 3
			view_both
		end
	elsif user_input == "DELETE"

	elsif user_input == "SEE"
		menu
	end
end