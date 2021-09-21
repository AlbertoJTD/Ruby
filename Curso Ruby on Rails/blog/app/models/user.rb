class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #Indicar que le pertenece a 'article' -> seria la relacion N
  has_many :articles

  #Foto de perfil del usuario -> img, pdf, zip, documentos
  has_one_attached :avatar
end
