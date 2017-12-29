class TodosController < ApplicationController
    def index 
        @todos = Todo.all 
    end

    def create 
        #binding.pry ------ Make the Ajax request
        #Todo.create(todo_params) 
        #redirect_to root_path

        ### Handle the Response 
        @todo = Todo.create(todo_params) 

        respond_to do |format|
            # nếu phản hồi fomat là html, 
            # redirect như thường lệ
            format.html { redirect_to root_path }

            # nếu phản hồ là javascript, do something else..
            format.js{}
        end
    end 

    def destroy 
        @todo = Todo.find(params[:id])
        @todo.destroy
      
        respond_to do |format|
          format.html { redirect_to root_path }
          format.js { }
        end
    end 

    private 
        def todo_params 
            params.require(:todo).permit(:description, :priority)
        end 
end
