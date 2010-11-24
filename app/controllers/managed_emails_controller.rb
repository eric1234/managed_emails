class ManagedEmailsController < ApplicationController

  def index
    @managed_emails = ManagedEmail.all
  end

  def edit
    @managed_email = ManagedEmail.find params[:id]
    render :action => 'form'
  end

  def update
    @managed_email = ManagedEmail.find params[:id]
    if @managed_email.update_attributes params[:managed_email]
      flash[:notice] = "Updated #{@managed_email} e-mail"
      redirect_to managed_emails_url
    else
      render :action => 'form'
    end
  end

end
