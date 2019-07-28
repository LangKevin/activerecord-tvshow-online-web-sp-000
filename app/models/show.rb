class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end
  def self.lowest_rating
    Show.minimum(:rating)
  end
  def self.most_popular_show
    show = Show.order(rating: :desc).limit(1).first
  end
  def self.least_popular_show
    show = Show.order(rating: :asc).limit(1).first
    # show.first.attributes["name"]
    # show.first
  end
  def self.ratings_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    Show.where("rating > 5")
  end
end
