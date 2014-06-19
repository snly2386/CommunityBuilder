require 'rubygems'
require 'geokit'


Geokit::Geocoders::GoogleGeocoder.api_key = 'AIzaSyA54WLTbR0ReGQy9CMskZ0TW-wXN1taUUo'

def get_coordinates
  @a = Geokit::Geocoders::GoogleGeocoder.geocode '140 Market St, San Francisco, CA'
  @a.ll
end