class Recipe < ApplicationRecord
    validates :name, :stuff, :duration, :prepare_mode, presence:true
    validates_length_of :stuff, maximum: 200
    validates_length_of :prepare_mode, maximum: 300
    validates_numericality_of :calories, greater_than_or_equal_to: 0, presence:true
    validates_format_of :poster, allow_blank: true, with:  /\w+\.(gif|jpeg|jpg|png)\z/i, message:" utilizar somente arquivos GIF,JPEG, JPG ou PNG."

    KIND = %w(Carnes Aves Peixes Massas Saladas Doces)
    validates_inclusion_of :kind, in: KIND

    has_many :comments, dependent: :destroy

    def Light?
        calories < 100
    end

    def self.created_at
        where('created_at <= ?', Time.now).order('created_at desc')
    end
end
