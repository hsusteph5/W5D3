require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    #req = Rack::Request 
    all_cookies = req.cookies
    @cookie = JSON.parse(all_cookies["_rails_lite_app"]) if all_cookies["_rails_lite_app"]
    p @cookie
    @cookie ||= {}
  end

  def [](key)
    @cookie[key]
    
  end

  def []=(key, val)
    @cookie[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    path = "\\"
    value = 
    res.set_cookie("_rails_lite_app", "") 
  end
end
