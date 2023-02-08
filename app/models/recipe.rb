class Recipe < ApplicationRecord
    def Light?
        calories < 100
    end

    def self.created_at
        where('created_at <= 7', time.now).order('created_at desc')
    end
end
