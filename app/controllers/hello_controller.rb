class HelloController < ApplicationController
  def index
    render json: 'hello'
  end

  def view
    @msg = 'Hello World'
  end

  def list
    @books = Book.all
  end
end
