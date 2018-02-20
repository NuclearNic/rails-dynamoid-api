# API exposed to X-Facade
class CustomersController < ApplicationController
  def index
    customers = Customer.all
    render json: customers
  end

  def create
    puts 'create'
    # binding.pry
  end

  def show
    customer = Customer.find_by_cid(params[:id])
    render json: customer
  end

  def update
    puts 'update'
  end

  def destroy
    head 200
  end
end
