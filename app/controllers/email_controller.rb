class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to root_path
  end
end
