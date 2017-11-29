# DELETE /emails/1
# DELETE /emails/1.json

class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_url }
      # format.json { head :no_content }
      format.js   { render :layout => false }

    end
  end
end
