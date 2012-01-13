class Distributor < ActiveRecord::Base
  attr_accessible :provincia, :comune, :indirizzo, :fulladdress, :img_url, :tipo, :prezzo, :prezzo_min, :longitude, :latitude
  geocoded_by :fulladdress
  after_validation :geocode
end
