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
  def self.shows_by_alphabetical_order
    # For this test return all movies released after 2002 and ordered by
    # release date descending
    Show.where("release_date > 2002").order(release_date: :asc)
  end
end
