class Task < ApplicationRecord
     
  # Determina os campos obrigatórios
  validates :name, :dttini, :dttfim, :finish, presence:true


  belongs_to :project
end
