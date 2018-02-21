# API exposed to X-Facade
class CustomersController < ApplicationController
  def index
    customers = Customer.all
    render json: customers
  end

  def create
    if Customer.create(customer_params)
      head 200
    else
      head 400
    end
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

  private

  def customer_params
    params.permit(:cid, :email, :first_name).to_hash
  end
end
