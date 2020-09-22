class TasksController < ApplicationController

    def index
    
        # Procura o Projeto certo dentro de Project
        @project = Project.find(params[:project_id])

        # Busca todos as Tasks relacionada ao Projeto
        @tasks = @project.tasks

    end

end
