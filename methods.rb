# gems
  require 'tty-prompt'
  require 'tty-font'
  require 'rainbow'
  require 'csv'

  def delete_client(data)
      table = CSV.table('trainer1.csv')
      table.delete_if { |row| row[:last_name] == data }
      File.write('trainer1.csv', table.to_csv)
  end

  def help
      print 'Please enter your clients name: '
      return get_user_input ('Please try again: ') do |client_name|
      if client_name.empty?
      raise InvalidInputError, "Name must not be empty. Please try again"
  end

  def delete_client(data)
      table = CSV.table('trainer1.csv')
      table.delete_if { |row| row[:last_name] == data }
      File.write('trainer1.csv', table.to_csv)
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

  def get_input(message)
      print message
      print "\n"
      user_input = gets.chomp
    # errors stuff here!! - loop
  end

  def user_search(message_to_search)
      print message_to_search
      print "\n"
      search_input = gets.chomp
  end