class Band < ActiveRecord::Base
  belongs_to :manager
  has_many :band_musicians
  has_many :musicians, :through => :band_musicians
end
