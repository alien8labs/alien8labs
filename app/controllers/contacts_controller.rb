class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end


  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to root_path, :notice => 'Good choice!  We will get back to you soon.'
    else
      render :new
    end
  end
end
