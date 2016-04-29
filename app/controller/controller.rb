class Controller
  attr_reader :view

  def initialize
    @view = View.new
    run
  end

  def run
    view.welcome

    loop do
      location = view.get_location

      found = Business.parse(location)
      if found
        results = Business.find
        view.print_search_results(results)
        loop_again = view.offer_to_search_again
        break unless loop_again.include?("y")
      else
        view.unfound_error
      end

    end

    view.goodbye
  end

end
