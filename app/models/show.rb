class Show <ActiveRecord::Base
    def self.highest_rating
        maximum(:rating)
    end
    #show with the highest rating
    def self.most_popular_show
        find_by(rating: highest_rating)
    end
    #lowest rating
    def self.lowest_rating
        minimum(:rating)
    end
    #least popular show
    def self.least_popular_show
        find_by(rating: lowest_rating)
    end
    #sum of all ratings
    def self.ratings_sum
        sum(:rating)
    end
    #shows with a rating above 5
    def self.popular_shows
        where("rating > ?", 5)
    end
    #shows ordered by alphabetical order
    def self.shows_by_alphabetical_order
        order(:name)
    end
end