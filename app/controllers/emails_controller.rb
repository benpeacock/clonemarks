class EmailsController < ApplicationController
  def create
  	if EmailReceiver.receive(request)
      render :json => { :status => 'ok' }
    else
      render :json => { :status => 'rejected' }, :status => 406
    end
  end
end
