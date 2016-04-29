class Business < ActiveRecord::Base
  def self.parse(data)
    @@zipcode = data.scan(/\d{5}/)
    @@zipcode.empty? ? false : true
  end

  def self.find
    searching_for = @@zipcode
    Business.where(zip: searching_for).limit(5)
  end
end
