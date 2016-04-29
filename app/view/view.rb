class View

  def welcome
    puts "----------------------------------------------------------------------------------------------------"
    puts "PUT YOUR MONEY WHERE YOUR MOUTH IS".center(100)
    puts "---------------------------------------------------------------------------------------------------------"
    puts "\nYou're helping promote and foster the growth of NYC's women and minority owned businesses! While small businesses make up a huge portion of NYC's businesses, minority and women owned ones make up only a fraction. THANKS FOR HELPING OUT!!!".center(100)
    puts "---------------------------------------------------------------------------------------------------------"
  end

  def get_location
    print "\nEnter zip code:   "
    input
  end

  def print_search_results(results)
    results.each do |result|
      puts "\n---------------------------------------------------------------------------------------------------------"
      puts "#{result[:vendor_formal_name]}"
      puts "#{result[:business_description]}"
      puts "\n#{result[:address1]} #{result[:address2]}, #{result[:city]}, #{result[:state]}, #{result[:zip]}"
      puts "\n#{result[:website]}"
      puts "#{result[:telephone]}"
    end
  end

  def unfound_error
    puts "\nDid you enter a zip?! It looks invalid, try again!"
  end

  def offer_to_search_again
    puts "\n\n---------------------------------------------------------------------------------------------------------"
    print "Want to find more businesses? (y/n)   "
    input
  end

  def goodbye
    puts "\nNow go put your money where your mouth is!"
  end

  def input
    gets.chomp
  end

end
