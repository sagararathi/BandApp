class Musician< ActiveRecord::Base
 has_many :band_musicians
  has_many :bands, :through => :band_musicians
end
