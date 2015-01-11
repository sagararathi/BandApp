require 'soda/client'
client = SODA::Client.new( { :domain => "data.cityofnewyork.us", :app_token => "R3U5um9w7ZSYcmKF6uwZjt2O5"})
response = client.get("2zzj-3hqt")
response.each do |record|
  lic = LicenseNumber.create(license_number: record.license_number)
  add = JSON.parse(record.location_1.human_address)
  address = Address.create(address: add["address"], city: add["city"], state: add["state"], zip: add["zip"])

  Laundromat.create(entity_name: record.entity_name, address: address, license_number: lic)

end
