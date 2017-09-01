class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  def index
    @contacts = Contact.all
  end
  
  def show
    
  end
  
  def new
    @contact = Contact.new
  end
  
  def edit
   
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
  
  def update
    
    
    if @contact.update(contact_params)
      flash[:notice] = "Contact was updated successfully."
      redirect_to contact_path(@contact)
      
    else
      render 'edit'
    end
  end
  
  def destroy
    
    @contact.destroy
    flash[:notice] = "Contact was successfully destroyed."
    
    redirect_to contacts_path
  end
  
  private
  
  def set_contact
    @contact = Contact.find(params[:id])
  end
  
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :city, :state, :zip)
  end
end
