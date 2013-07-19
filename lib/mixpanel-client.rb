require 'json'
require 'base64'
require 'faraday'
require 'faraday/middleware'

class Mixpanel < Hash

  URL = 'http://api.mixpanel.com'
  
  # Require token at instantiation
  #
  # @param [string] project token
  def initialize(key)
    @key = key
  end
  
  # Assemble data for request
  #
  # @param [string] tracking event
  # @param [hash] additional data points
  def get_data(event, data={})
    self['event'] = event
    self['properties'] = data 
    self['properties']['token'] = @key
    self['properties']['time'] = Time.now.to_i
    
    Base64.encode64(JSON.generate(self))
  end
  
  # Get data and make HTTP request
  #
  # @param [string] tracking event
  # @param [hash] additional data points
  def track(event, data={})
    params = self.get_data(event, data)
    r = self.conn.get '/track', {:data => params}
    r.body.to_i
  end

  # Create Faraday connection
  def conn 
    Faraday.new(:url => URL) do |c|
      c.adapter Faraday.default_adapter
    end
  end
  
end