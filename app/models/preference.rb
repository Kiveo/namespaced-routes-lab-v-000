class Preference < ActiveRecord::Base

  def song_sort_order(song, sort_direction) #controls asc or desc?
    if sort_direction.downcase == 'asc'
      song.sort('title asc')
    elsif sort_direction.downcase == 'desc'
      song.sort('title desc')
    end
  end

  def artist_sort_order(artists, sort_method) #control default sort order of /artists page
    if sort_method.downcase == 'desc'
       artist.sort('name desc')
     elsif sort_method.downcase == 'asc'
       artists.sort('name asc')
     end
  end

  def allow_create_songs #turn on and off

  end

  def allow_create_artists
  end

end
