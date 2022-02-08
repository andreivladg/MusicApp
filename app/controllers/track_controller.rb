class TrackController < ApplicationController

  def assignTemplateVars
    @tracks = Track.all
  end
  def show
    @spotifyTracks = RSpotify::Track.search('Metallica').all
    assignTemplateVars
    render 'track/track_view'
  end

  def track_view
    @tracks = Track.search(params[:search])
  end

  private
  def track_params
    params.require(:track).permit(:id,:title,:artist)
  end

  def playlist_params
    params.require(:user_track).permit(:user_id, :track_id)
  end

end
