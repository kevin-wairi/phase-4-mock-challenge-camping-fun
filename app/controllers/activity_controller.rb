class ActivityController < ApplicationController
  def index
    activities = Activity.all
    render json: activities,status: :ok
  end

  def destroy
    activity = Activity.find_by(id: params[:id])
    if(activity)
    activity.delete
    render json: head :no_content,status: :no_content
    else
      render json: {error: "Activity not found"},status: :not_found
    end
  end
end
