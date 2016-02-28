## Overview

**A Night at the Movies** provides a fun mash up of your favorite movies and music genres. Using data from the IMDB database and Spotify, we'll tell you all the information you need to know about your favorite movie, as well as the most popular song that came out the same year as the movie. Get ready for Netflix & Chill (or #tbt).

This version is now database backed so we can serve your requests even more quickly!

## Usage

### Installation

To successfully run this program:
* Clone this reponsitory to your local machine.
* Run `bundle install`
* Sign up for a [MyAPIFilms](http://www.myapifilms.com/index.do) key and store it in your local environment with name `MYAPIFILMS_KEY`.
* Run `rake db:migrate`
* Boot up your server!

### API Documentation

The API endpoint is available through `/api/v1/search`. All the API needs is two parameters: a **movie title** and a **music genre.** These should be passed in like so:

`api/v1/search/movietitle/musicgenre`

To retrieve a json response of the data, add `,json` to the end of the request. Otherwise, we'll return an HTML page with a brief overview of the data.

All requests use the **GET** method and can be made through your browser.

### Example Results

Sample request: `/api/v1/search/this%20is%20spinal%20tap/pop.json`

Sample results:

```

```
