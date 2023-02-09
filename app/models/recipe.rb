class Recipe < ApplicationRecord
    def Light?
        calories < 100
    end

    def self.created_at
        where('created_at <= ?', Time.now).order('created_at desc')
    end
end
