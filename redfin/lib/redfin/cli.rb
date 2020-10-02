class Redfin::CLI

  def call
    list_homes
    menu
    goodbye
  end

  def list_homes
    puts ""
    puts "Welcome to my redfin cli project!"
    puts "Please select a town in Placer county"
    puts ""
    puts <<-DOC.gsub /^\s*/, ''
      1. Roseville
      2. Auburn
      3. Rocklin
      4. Lincoln
      5. Granite Bay
      6. Loomis
    DOC

  end

  def menu
    puts ""
    input = nil
    while input != "exit"
      puts "Enter the number you want more information on or type exit to leave, or list to see options again."
      input = gets.strip
      case input
      when "1"
        #puts "You selected Roseville"
        Redfin::Roseville.call
      when "2"
        puts "You selected Auburn"
      when "3"
        puts "You selected Rocklin"
      when "4"
        puts "You selected Lincoln"
      when "5"
        puts "You selected Granite Bay"
      when "6"
        puts "You selected Loomis"
      when "list"
        list_homes
      else
        puts "Your input is not valid, please input again"
        list_homes
      end
    end
  end

  def goodbye
    puts "See you next time! :)"
  end
end
