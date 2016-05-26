class ContactsController < ApplicationController
  def new
    
  end
  def create
    @contact_data = Contact.new(contact_params)
    @contact_data.save
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :message)    
  end

end
