class Public::CustomersController < ApplicationController
    
  def show
    @customer = current_customer
  end
  
  def edit
    @customer = current_customer
  end
  
  def update
    @customer = current_customer
    if
    @customer.update(customer_params)
    redirect_to public_customers_path
    else
    render :edit
    end
  end
  
  def unsubcribe
    @customer = current_customer
  end
  
  def withdraw
   current_customer.update(is_deleted: false)
   reset_session
   redirect_to root_path
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :is_delete, :email)
  end
end
