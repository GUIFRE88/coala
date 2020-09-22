module ProjectsHelper

    def porcentagem(project)

        # Busca as tasks
        @tasks = project.tasks

        # Caso possua tasks 
        if @tasks.size > 0 

            finish = 0
            nofinish = 0
            total = 0 
            percent = 0

            # Percorre todos os registros
            @tasks.each do |task|

                # Caso a task esteja finalizada
                if task.finish
                    finish += 1 

                # Caso não esteja finalizada
                else
                    nofinish += 1 
                end

                # Soma o total de tasks
                total += 1
            end

            # Busca o percentual de tasks finalizadas
            percent = ( 100 / total ) * finish
       
        # Caso não possua task, determina que está 100% completo
        else

            "100"

        end
               
    end

    def atrasado(project)

        @tasks = project.tasks

        # Caso possua tasks 
        if @tasks.size > 0 

            atrasada = false
            
            # Percorre todos os registros
            @tasks.each do |task|

                # Verifica se possui alguma data posterior a de final do projeto
                if task.dttfim > project.dtfim && !task.finish

                    atrasada = true
                
                end

            end

            # Caso possua alguma task com data posterior a de final do projeto
            if atrasada

                "Sim"

            else

                "Não"

            end

        else

            "Não"

        end

    end

end
