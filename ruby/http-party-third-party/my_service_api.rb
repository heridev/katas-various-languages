require 'httparty'

class MyServiceApi
  include HTTParty

  base_uri 'https://api.stackexchange.com'

  def self.get_stack_overflow_posts
    get('/2.2/questions?site=stackoverflow')
  rescue => e
    # puts "exception #{e.message}"
    self.unavailable_api(error)
  end

  def self.unavailable_api(error)
    # saving logs, notifying tracking errors
    # goes here
    # send errors to your tracking system
    { error: 'Unavailable service' }
  end
end
