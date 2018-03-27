class CablesController < ApplicationController
  def index
    @cables = Cable.all
  end

  def new
    @solboxes = Solbox.all
    @cable = Cable.new
  end

  def create
    @cable = Cable.new(set_cable_params)
    if @cable.save
      @data = Cable.nodes_edges
    end
  end

  def sigma_nodes
    data = Cable.nodes_edges

    render json: data, status: :ok
  end

  private

  def set_cable_params
    params.require(:cable).permit(:cable_identity, :solbox_from_id, :solbox_to_id, :distance)
  end
end
