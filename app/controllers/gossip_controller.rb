class GossipController < ApplicationController
  def home

  end

  def team

  end

  def contact

  end

  def add

  end

  def add_gossip
  	Gossip.create(author: params['author'],content:params['content'])
  	redirect_to '/gossip/all'
  end

	def supprimer
		Gossip.find(params[:id]).destroy
		redirect_to '/gossip/all'
 	end
  def all
  	@gossip = Gossip.all
  end

  def modification
  	@gossip = Gossip.find(params[:id])
  end
  
  def update
    Gossip.find(params[:id]).update content:params['content']
  	redirect_to '/gossip/all' 
  end
end
