class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.find_by(id:1)
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        found_movie = Movie.find_by(attributes)
        found_movie
    end

    def self.find_movies_after_2002
        Movie.where("release_date > '2002'")
    end
    
    def update
        Movie.update
    end

    def self.update_all_titles(title)
        Movie.update_all(title: title)
    end

    def self.delete_by_id(id)
        movie = Movie.find_by(id: id)
        movie.delete
    end

    def  self.delete_all_movies
        Movie.destroy_all
    end
end