class TrackRelationshipsController < ApplicationController
  before_action :logged_in?
  def create
    @user = User.find(current_user.id)
    @track = Track.find(params[:track_id])
    @user.add_to_playlist(@track)
  end
end
