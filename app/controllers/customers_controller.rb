# API exposed to X-Facade
class CustomersController < ApplicationController
  def index
    puts 'index'
  end

  def create
    puts 'create'
    # binding.pry
  end

  def show
    puts 'show'
  end

  def update
    puts 'update'
  end

  def destroy
    puts 'destroy'
  end
end
