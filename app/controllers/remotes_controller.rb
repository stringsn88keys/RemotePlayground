class RemotesController < ApplicationController
  def index
		@remotes = Remote.all
  end
	def show
		@remote = Remote.new(params[:id])
		@remote.load_keys
	end
end
