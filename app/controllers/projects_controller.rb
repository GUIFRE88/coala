class ProjectsController < ApplicationController

    def index

        @projects = Project.all

    end

    def show

        @project = Project.find(params[:id])

    end


    def edit

        @project = Project.find(params[:id])

    end

    def update

        @project = Project.find(params[:id])
        if @project.update(project_params)
            redirect_to @project, notice: "Projeto modificado com sucesso!"
        else
            render :edit
        end
    end

    def new

        @project = Project.new

    end

    def create

        @project = Project.new(project_params)
        if @project.save
            redirect_to @project, notice: "Projeto criado com sucesso!"
        else
            render :new
        end        

    end

    def destroy

        @project = Project.find(params[:id])
        @project.destroy
        redirect_to projects_url, alert: "Projeto excluída."

    end

    private 

        def project_params
            params.require(:project).permit(:name, :dtini, :dtfim)
        end


end
