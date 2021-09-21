class Article < ApplicationRecord
    has_rich_text :content
    
    #Indicar que le pertenece a 'user' -> seria la relacion 1
    belongs_to :user

    #Relacion n:n
    has_many :has_categories
    has_many :categories, through: :has_categories

    attr_accessor :category_elements

    def save_categories
        #category_elements 1,2,3
        #Convertir eso es una rrego 1,2,3 => [1,2,3]

        #Iterar ese arreglo
        return has_categories.destroy_all if category_elements.nil? || category_elements.empty?

        #Devuelve en un arreglo los valores que no coincidan
        has_categories.where.not(category_id: category_elements).destroy_all

        category_elements.each do |category_id|
            #Crear HasCategory-> HasCategory [article_id: 1, categori_id: 2]
            
            HasCategory.find_or_create_by(article: self, category_id: category_id)
        
        end

        
    end
end
