class RecipesController < ApplicationController
    def index
        @recipes = ['Arroz e feijao' , 'Peixe', 'Frango', 'Carne', 'Pizza']
    end
end
