class TunnelsController < ApplicationController
  def show
  end

  def new
    @tunnel = Tunnel.new
  end

  def edit
  end

  def update

  end

  def destroy
  end
  private
  def tunnel_params
    params.require(:tunnel).permit(
                               :services,
                               :action,
                               :remarks
    )
  end
end
