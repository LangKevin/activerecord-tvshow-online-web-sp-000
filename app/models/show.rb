class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end
  def self.lowest_rating
    Show.minimum(:rating)
  end
  def self.most_popular_show
    Show.order(rating: :asc).limit(1)
  end
  def self.least_popular_show
    Show.order(rating: :asc).limit(1)
  end
end
