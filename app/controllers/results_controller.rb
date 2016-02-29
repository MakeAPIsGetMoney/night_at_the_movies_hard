class ResultsController < ApplicationController
  def show
    if params[:genre] == nil || params[:movie] == nil
      render json: "Please pass in both a movie and a music genre!"
    else
      @movie = MyFilm.new(params[:movie])
      song = Music.new(genre: params[:genre], year: @movie.movie.year)
      @track = song.track
    end
  end
end
