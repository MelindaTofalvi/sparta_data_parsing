require 'json'

# This walkthrough gives and example of iterating

class ParseJson

  attr_accessor :json_file
  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument
  def initialize(json)
    puts json
    @json_file = JSON.parse(json)

  end

  def get_base_value
  	@json_file['base']
  end

  def get_date_value
  	@json_file['date']
  end

  def number_of_rates_value
  	get_rates.values.count
  end

  def number_of_rates_key
  	get_rates.keys.count		
  end

  def get_rates
  	@json_file['rates']
  end

end

# run = ParseJson.new('json_exchange_rates.json')

# p run.get_base_value