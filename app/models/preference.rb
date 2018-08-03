class Preference < ActiveRecord::Base

  def song_sort_order(song) #controls asc or desc?
    song.sort('title asc')
  end
end
