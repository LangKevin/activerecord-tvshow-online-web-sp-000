class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:highest_rating)
  end
end
