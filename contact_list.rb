# make a title Contact List
# make a menu:
  #1) create contact
  #2) view all contacts
  #3) Delete contact
  #4) edit contact
  #5) exit
# make an else option for non 1-5 inputs

@contact_list = []

def create_contact
  print "Add Name: "
  name = gets.chomp
  contact.new(name)
  puts "Add Another Contact? (Y/N)"
  print "> "
  yes_add = gets.chomp
  if yesadd == "Y"
    create_contact
  else main_menu
  end
end

def view_contacts
    puts contacts = [
        {name: 'Charn Blanston', email: 'Blanston@geocities.com'},
        {name: 'Shart Conglebarn', email: 'shart69@myspace.com'},
        {name: 'Michael Cohen', email: 'cohen_m@attica_correctional.org'}
    ]
end

def delete_contact
    puts "Enter name to delete."
    print "> "
    @name = gets.chomp
    name.remove(@name)
    puts "Delete another contact? (Y/N)"
    print "> "
    yes_delete = gets.chomp
    if yes_delete == "Y"
        delete_contact
    else main_menu
    end
end

#def edit_contact
#end

def main_menu
  loop do
    puts "Contact List"
    puts "1) Create Contact"
    puts "2) View All Contacts"
    puts "3) Delete Contact"
    puts "4) Edit Contact"
    puts "5) Exit"
    puts "Enter Number to Select"
    print "> "
    input = gets.to_i
    case input
    when 1
        create_contact
    when 2
        view_contacts
    when 3
        delete_contact
    when 4
        edit_contact
    when 5
        break
    else input != (0..5)
        puts "You think this is a fucking joke?\nEnter a number between 1 and 5."
    end
  end
end

main_menu 