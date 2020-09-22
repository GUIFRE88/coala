class TasksController < ApplicationController
    before_action :set_project

    def index
    
        # Busca todos as Tarefas relacionada ao Projeto
        @tasks = @project.tasks

    end

    def new 

        # Cria uma nova Tarefa relacionada ao Projeto
        @task = @project.tasks.new

    end

    def create

        # Cria uma Tarefa
        @task = @project.tasks.new(task_params)

        if @task.save

            # Envia para a rota
            redirect_to project_tasks_path(@project), notice: "Tarefa gravada com sucesso!"

        else

            # Rendezi novamente o formulário
            render :new

        end

    end

    private 

    # Campos que podem ser gravados
    def task_params
        params.require(:task).permit(:name, :dttini, :dttfim, :finish)
    end

    def set_project
    
        # Busca o Projeto
        @project = Project.find(params[:project_id])
    
    end

end
