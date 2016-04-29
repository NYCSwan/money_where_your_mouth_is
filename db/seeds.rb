require 'json'
require 'open-uri'

information = JSON.parse(open('https://data.cityofnewyork.us/resource/63ss-e7x6.json').read)

information.each do |row|
  desired = ["vendor_formal_name", "business_description", "address1", "address2", "city", "state", "zip", "website", "telephone"]

  row = row.select{|k, v| desired.include?(k)}

  Business.create(row)
end
