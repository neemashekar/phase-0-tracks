require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("contacts.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    phone INT,
    address VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

###### Displays all items in Contacts db
def viewContacts(db)
	puts "-----------------------Contacts---------------------------"
	contact = db.execute("SELECT * FROM contacts ORDER BY name")
	contact.each do |entry|
		puts "----------------------------------------------------------"
	  	puts "| Name:    #{entry['name']}"
	  	puts "| ID:      #{entry['id']}" 
	    puts "| Phone:   #{entry['phone']}"
	    puts "| Address: #{entry['address']}"
	    puts "----------------------------------------------------------"
	    puts ""
	  	end
end

###### Allows users to add new contacts 
def addContact(db)
	puts "******************************New Contact*********************************"
	puts "Enter name:"
	name = gets.chomp
	puts "Enter Phone Number (No dashes/parens):"
	num = gets.chomp.to_i
	puts "Enter Address:"
	add = gets.chomp
	db.execute("INSERT INTO contacts (name, phone, address) VALUES (?, ?, ?)", [name, num, add])
end 

####### Allows users to edit fields in a contact 
def editContacts(db)
	puts "::::::::::::::::::::::::::::Edit Contacts:::::::::::::::::::::::::::::::::::"
	puts "Enter the ID of the contact to edit:"
	id = gets.chomp.to_i
	
	puts"1 --To Edit Name"
	puts"2 --To Edit Phone #"
	puts"3 --To Edit Address"
	x = gets.chomp.to_i
	case x
	when 1
		puts "Enter new name:"
		n = gets.chomp
		db.execute("UPDATE contacts SET name =  ? WHERE id = ?", [n, id])
	when 2
		puts "Enter new phone number (No dashes/parens):"
		p = gets.chomp.to_i
		db.execute("UPDATE contacts SET phone = ? WHERE id = ?", [p, id])
	when 3
		puts "Enter new address:"
		a = gets.chomp
		db.execute("UPDATE contacts SET address = ? WHERE id = ?", [a,id])
	else
		puts "Invalid Selecting..."
	end

end

######## Deletes a contact 
def deleteContact(db)
	puts "^^^^^^^^^^^^^^^^^^^^^^Delete Contact^^^^^^^^^^^^^^^^^^^^^^"
	puts "Enter the ID of the contact to delete:"
	id = gets.chomp.to_i
    db.execute("DELETE FROM contacts WHERE id = ?", [id])
end

######### Menu screen infinitely loops until user chooses to exit 
def menu(db)
	done = false
	while !done
		puts "What would you like to do?"
		puts ""
		puts "1 --To View Contacts"
		puts "2 --To Add New Contact"
		puts "3 --To Edit Contact"
		puts "4 --To Delete Contact"
		puts "Or Press any other key to exit"

		x = gets.chomp.to_i

		case x
			when 1 
				viewContacts(db)
	  		when 2
	  			addContact(db)
	  			viewContacts(db)
	  		when 3
	  			viewContacts(db)
	  			editContacts(db)
	  		when 4
	  			viewContacts(db)
	  			deleteContact(db)
	  		else
	  			puts "Exiting..."
	  			done = true
	  	end
	end 
end

=begin
------------Initializing database for first use------------
5.times do
  create_contacts(db, Faker::Name.name, Faker::PhoneNumber.phone_number, Faker::Address.street_address)
end
=end

menu(db)

	










