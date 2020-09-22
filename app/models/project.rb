class Project < ApplicationRecord

    # Determina os campos obrigatórios
    validates :name, :dtini, :dtfim, presence:true

end
