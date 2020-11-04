# frozen_string_literal: true

class EdenEvents::CLI
  def call
    puts "\nWelcome to Eden!\n"
    months
    list_months
    user_month
    # get_advertised_months
    # get_user_month
    # get_events_for(month)
    # list_events
  end

  def months
    # to be scraped instead
    @months = ['July 2019', 'Aug 2019', 'Sep 2019', 'Oct 2019']
  end

  def list_months
    # list the months
    puts 'Choose a month to see events'
    @months.each.with_index(1) do |month, index|
      puts "#{index}. #{month}"
    end
  end

  def user_month
    chosen_month = gets.strip

    if valid_input(chosen_month.to_i, @months)

    end
  end

  def valid_input(input, data)
    input <= data.length && input.to_i > 0
  end
end
