class Recipe < ApplicationRecord
    def Light?
        calories < 100
    end
end
