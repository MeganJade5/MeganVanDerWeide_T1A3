def delete_user_menu
  puts "============================================"
  delete_users_active_list
  puts " "
  puts "Please type in the last name of the client you wish to eradicate: "
  print "> "
  eradicate(gets.chomp)
end

def eradicate(delete_input)
  delete_row = delete_authentication(delete_input)
  if delete_row
    puts "Are you sure you want to delete #{delete_input} from the database?"
    puts "[y]es or [n]o"
    print "> "
    delete_answer = gets.chomp
    if delete_answer == "y"
      delete_user
      after_deletion_menu
    elsif delete_answer == "n"
      puts "Close call! Taking you back to main menu."
      exit == true
    else
      puts "Input not recognised. Please try again."
      eradicate(delete_input)
    end
  else
    puts "User not recognized. Please try again."
    retry
    delete_user_menu
  end
end

def delete_client
  table = CSV.table('trainer1.csv')
  table.delete_if { |row| row[:last_name] == data}
  File.open('trainer1.csv', 'w') do |f|
    f.write(table.to_CSV)
  end
  after_deletion_menu
end

def after_deletion_menu
  puts " "
  puts "User deleted! What would you like to do now?"
  puts "1. Delete another user"
  puts "2. Back to main menu"
  print "> "
  after_deletion_choice = gets.chomp
  if after_deletion_choice == "1"
    delete_user_menu
  elsif after_deletion_choice == "2"
    admin_main_menu
  else
    puts "Input not recognized. Please try again."
    after_deletion_menu
  end
end

def delete_users_active_list
  CSV.foreach("./users.csv", headers: true) do |row|
    username = row['username']
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Username: #{username}"
  end
end

def delete_authentication(username)
  CSV.open('users.csv', headers: true).find { |row| row['username'] == username }
end