class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }
before_save :mayuscula
after_save :enviar_notificacion
def mayuscula
    self.title = self.title.upcase
    end
  end