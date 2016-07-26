class KeysController < ApplicationController
  def show
    params[:remote_id] || raise('no remote')
    params[:id] || raise('no key')
    Key.find(remote_name: params[:remote_id], key_name: params[:id]).send_once
    redirect_to remote_path(params[:remote_id]) unless request.xhr?
  end
end
