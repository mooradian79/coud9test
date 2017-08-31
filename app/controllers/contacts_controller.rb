class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
   # render plain: params[:contact].inspect
    @contact = Contact.new(contact_params)
    @contact.save
    
    redirect_to contacts_show(@contact)
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :city, :state, :zip)
  end
end
