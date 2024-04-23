class RequestsController < ApplicationController



  def create
    @request = Request.new(from_id: current_user.id,to_id: params[:to])
    if @request.save
      flash[:notice] = "Request Sent Successfully"
      redirect_to root_path
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Request Rejected"



  end




end
