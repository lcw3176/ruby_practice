class HelloController < ApplicationController
  def index
    render json: 'hello'
  end
end
