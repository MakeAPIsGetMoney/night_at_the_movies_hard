class ResultsController < ApplicationController
  def show
    #update the below line to take :movie instead of :year
    if params[:genre] == nil || params[:year] == nil
      render json: "Please pass in both a movie and a music genre!"
    else
      #the below line will need to be updated to take in year from the movie object
      song = Music.new(genre: params[:genre], year: params[:year])
      @track = song.track
    end
  end
end
