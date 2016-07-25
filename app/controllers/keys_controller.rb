class KeysController < ApplicationController
  def show
    params[:remote_id] || raise('no remote')
    params[:id] || raise('no key')
    `irsend SEND_ONCE #{params[:remote_id]} #{params[:id]}`
    redirect_to remotes_path(params[:remote_id])
  end
end
