class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = "Contact was successfully created."
      redirect_to contact_path(@contact)
      
    else
      
      render 'new'
    end
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :city, :state, :zip)
  end
end
