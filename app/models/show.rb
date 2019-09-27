class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        array = []
        fn = self.actors.map do |t|
            t.first_name
        end
        ln = self.actors.map do |t|
            t.last_name
        end
        name = [fn, ln].join(" ")
        array << name
    end

  
end