class Project < ApplicationRecord

    # Determina os campos obrigatórios
    validates :name, :dtini, :dtfim, presence:true

    # Assosiação da tabela Projetos -> Tasks
    # Determina que todas as Tasks serão deletadas, caso seja feita a exclusão do Projeto
    has_many :tasks, dependent: :destroy

end
