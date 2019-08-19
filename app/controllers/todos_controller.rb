class TodosController < ApplicationController
    def index
        @todos = List.all
    end
    
    def show
        @todos = List.find(params[:id])
    end
    
    def new
        @todos = List.new
    end 
    
    def edit
        @todos = List.find(params[:id])
    end
    
    def create
        @todos = List.new(todo_parameters)

        if @todos.save
            redirect_to todo_path(@todos)
        else
            render 'new'
        end
    end
    
    def update
        @todos = List.find(params[:id])
        if @todos.update(todo_parameters)
            redirect_to todos_path(@todos)
        else
            render 'edit'
        end
    end

    def destroy
        @todos = List.find(params[:id])
        @todos.destroy
       
        redirect_to todos_path
    end

    private
    def todo_parameters
    params.require(:todos).permit(:title, :info, :status)
    end
end
