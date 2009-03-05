class Movie < ActiveRecord::Base
  validates_presence_of :title, :actors, :director
end
