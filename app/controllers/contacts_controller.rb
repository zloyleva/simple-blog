class ContactsController < ApplicationController
  def new
  end

  def create
    @contact_data = Contact.new(contact_params)
    if @contact_data.valid?
      @contact_data.save
    else
      render action: :new #plain: 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :message)    
  end

end
