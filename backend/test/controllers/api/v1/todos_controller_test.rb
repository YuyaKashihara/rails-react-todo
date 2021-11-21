require "test_helper"

class Api::V1::TodosControllerTest < ActionDispatch::IntegrationTest
  def index
    render json: { status: 200, todos: Todo.all }
  end

  def create
    todo = Todo.new(todo_params)

    if todo.save
      render json: { status: 200, todo: todo }
    else
      render json: { status: 500, message: 'Todoの作成に失敗しました' }
    end
  end

  def desttory
    todo =  Todo.find(params[:id])

    if todo.desttory
      render json: { status: 200, todo: todo }
    else
      render json: { status: 500, message: 'Todoの削除に失敗しました'}
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:title)
    end

end
