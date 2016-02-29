class MyFilm
  attr_reader :movie, :success

  def initialize(movie)
    temp =  Movie.where(title: movie)
    if temp.empty?
      response = HTTParty.get("http://api.myapifilms.com/imdb/idIMDB?title=#{movie}&actors=1&token=#{ENV["MYAPIFILMS_KEY"]}")
      @success = !(response["data"]["movies"].empty?)
      if @success
        @movie = Movie.create(title: response["data"]["movies"][0]["title"],
                    year: response["data"]["movies"][0]["year"],
                    runtime: response["data"]["movies"][0]["runtime"][0],
                    url_poster: response["data"]["movies"][0]["urlPoster"],
                    imdb_id: response["data"]["movies"][0]["idIMDB"],
                    simple_plot:response["data"]["movies"][0]["simplePlot"])
        response["data"]["movies"][0]["directors"].each { |d| @movie.directors << Director.create(name: d["name"], imdb_id: d["nameId"]) }
        response["data"]["movies"][0]["writers"].each {|w| @movie.writers << Writer.create(name: w["name"], imdb_id: w["nameId"])}
        response["data"]["movies"][0]["actors"].each {|a| @movie.actors << Actor.create(name: a["name"], imdb_id: a["nameId"])}
      end
    else
      @success = true
      @movie = temp.first
    end
  end

  def get_directors_list
    array = []
    @movie.directors.each {|d| array << d["name"]}
    array
  end

  def get_actors_name_list
    array = []
    @movie.actors.each {|a| array << a["Name"] }
    array
  end

  def get_writers_list
    array = []
    @movie.writers.each {|w| array << w["name"]}
    array
  end
end
