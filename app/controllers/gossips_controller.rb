class GossipsController < ApplicationController

  def new

  end

def create
  @gossip = Gossip.new(gossip_params)
@gossip.save
redirect_to @gossip
  end

  def show
    @gossip = Gossip.find(params[:id])
    puts "Ceci est mon commentaire: #{@gossip}"
  end

  def index

    @gossips = Gossip.all

  end


  private

    def gossip_params
      params.require(:gossips).permit(:anonymous_author, :content)
    end


end
