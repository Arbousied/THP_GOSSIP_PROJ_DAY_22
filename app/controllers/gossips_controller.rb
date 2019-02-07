class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: session[:user_id])
     if @gossip.save
      flash[:notice] = "Nouveau Gossip créé"
       redirect_to root_path
     else
       flash[:error] = "Mauvais input"
       render 'new'
     end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params =  params.permit(:title, :content)
    if  @gossip.update(gossip_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end
end
