class Redfin::CLI

  def call
    list_homes
    menu
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
    puts "Enter the number you want more information on"
    input = gets.strip
    case input
    when "1"
      puts "You selected Roseville"
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
    end
  end
end
