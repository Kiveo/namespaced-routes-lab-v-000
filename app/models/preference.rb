class Preference < ActiveRecord::Base

  def song_sort_order(song, sort_direction) #controls asc or desc?
    if sort_direction.downcase == 'asc'
      song.sort('title asc')
    elsif sort_direction.downcase == 'desc'
      song.sort('title desc')
    end
  end

  def artist_sort_order=(artists, sort_method) #control default sort order of /artists page
    if sort_method.downcase == 'desc'
       artist.sort('name desc')
     elsif sort_method.downcase == 'asc'
       artists.sort('name asc')
     end
  end

  def allow_create_songs(selection) #turn on and off
    if selection == true || selection.downcase == 'true'
      true
    elsif selection == false || selection.downcase == 'false'
      false
    end
  end

  def allow_create_artists(artist_selection)
    if artist_selection == true || artist_selection.downcase == 'true'
      true
    elsif artist_selection == false || artist_selection.downcase == 'false'
      false
    end
  end

end
