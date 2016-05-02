#This was just an example during a session with Ryan Bigg

module Authenticatable
  def active_for_authentication?
    false
  end
end

class User
  include Authenticatable
  def active_for_authentication?
    super || true
  end
end
puts User.ancestors
puts User.new.active_for_authentication?
