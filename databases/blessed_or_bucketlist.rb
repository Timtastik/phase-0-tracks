# PSEUDO CODE
# This is a program that has one username for each database
# Within this database there are two tables of a blessings lists and bucket lists
# Blessings are what a user considers a good thing and adds it to this list
# Buckets are what a user consider wants a good thing to happen to them
# User can add to either list
# Usually Blessings are occuring right now or mainly in the past
# Usually Buckets are in the future and hope that will happen
# One awesome idea is that when confirmed a bucket item has been achieved then transfers to the blessing list
# Right now this is in the works

require 'sqlite3'

def add_to_blessings(db, comment, rating)
	db.execute("INSERT INTO blessings (bless, stars) VALUES (?, ?)", [comment, rating])
end

def add_to_buckets(db, comment, rating)
	db.execute("INSERT INTO buckets (bucket, stars) VALUES (?, ?)", [comment, rating])
end

def update_blessings(db, table, new_comment, where_id)
	db.execute("UPDATE #{table} SET bless='#{new_comment}' WHERE id='where_id'")
end

def update_buckets(db, table, new_comment, where_id)
	db.execute("UPDATE #{table} SET bucket='#{new_comment}' WHERE id='where_id'")
end

def view_blessings(db)
	blessings_list = db.execute("SELECT bless, stars FROM blessings")
	puts "BLESSINGS LIST"
	blessings_list.each do |blessing|
		puts "Comment:#{blessing['bless']}__Stars:#{blessing['stars']}"
	end
end

def view_buckets(db)
	buckets_list = db.execute("SELECT bucket, stars, date_entered FROM buckets")
	puts "BUCKET LIST"
	buckets_list.each do |buck|
		puts "#{buck['bucket']}__Stars:#{bucket['stars']}"
	end
end

def view_both(db)
	viewing_both_tables = <<-SQL
		SELECT blessings.bless, blessings.stars, buckets.bucket, buckets.stars
		FROM user
		INNER JOIN blessings ON user.blessings_id = blessings.id
		INNER JOIN buckets ON user.buckets_id = buckets.id
	SQL

	both_tables = db.execute(viewing_both_tables)
	puts "BLESSINGS AND BUCKETS"
	p both_tables
end

def menu
	puts ""
	puts "  What would you like to do?"
	puts "  ADD to your blessings/buckets list?"
	puts "  UPDATE to your blessings/buckets list?"
	puts "  VIEW one or more lists?"
	puts "  DELETE an item from a list?"
	puts "  or you're 'DONE' here?"
end

# DRIVER CODE -----------------------------------------
puts "This is the Blessings and Buckets program"
puts "Please enter your username or create a new one!"
username = gets.chomp

database = SQLite3::Database.new("#{username}.db")
database.results_as_hash = true

create_user_table = <<-SQL
	CREATE TABLE IF NOT EXISTS user(
		blessings_id INT,
		buckets_id INT,
		FOREIGN KEY (blessings_id) REFERENCES blessings(id),
		FOREIGN KEY (buckets_id) REFERENCES buckets(id)
		)
SQL

create_blessings_table = <<-SQL
	CREATE TABLE IF NOT EXISTS blessings(
		id INTEGER PRIMARY KEY,
		bless VARCHAR(255),
		stars INT
		)
SQL

create_bucket_list_table = <<-SQL
	CREATE TABLE IF NOT EXISTS buckets(
		id INTEGER PRIMARY KEY,
		bucket VARCHAR(255),
		stars INT
		)
SQL

database.execute(create_user_table)
database.execute(create_blessings_table)
database.execute(create_bucket_list_table)


user_input = ""
while user_input != 'DONE'
	menu

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
		puts "Best to update only if Typo... "
		puts "Which table? (blessings) or (buckets)?"
		table_wanted = gets.chomp

		if table_wanted == "blessings"
			puts "For which ID identifier number?"
			identifier = gets.chomp.to_i

			puts "What is the comment?"
			comment = gets.chomp

			update_blessings(database, table_wanted, comment, identifier)

		elsif table_wanted == "buckets"
			puts "For which ID identifier number?"
			identifier = gets.chomp.to_i

			puts "What is the comment?"
			comment = gets.chomp

			update_buckets(database, table_wanted, comment, identifier)
		end

	elsif user_input == "VIEW"
		puts "Which table would you like to view?"
		puts "Your bucket list[1], blessings list[2], or both[3]?"

		table_wanted = gets.chomp.to_i
	
		if table_wanted == 1
			view_buckets(database)
		elsif table_wanted == 2
			view_blessings(database)
		elsif table_wanted == 3
			view_both(database)
		end
	end
end

# SIDE NOTE TO SELF
# Better way to view the data?
# Is there a way to transfer one data from a table to a different table?
# Program works, but it isn't super user friendly