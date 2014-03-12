class EmailsController < ApplicationController
  def create
  	Rails.logger.info ">>> In Email Controller, Sender is: #{params[:sender]}"
  	if EmailReceiver.receive(request)
      render :json => { :status => 'ok' }
    else
      render :json => { :status => 'rejected' }, :status => 406
    end
  end
end
