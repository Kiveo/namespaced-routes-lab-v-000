class Preference < ActiveRecord::Base

  def song_sort_order=(sort_direction) #controls asc or desc?
    sort_direction
  end

  def artist_sort_order=(sort_method) #control default sort order of /artists page
    sort_method
  end

  def allow_create_songs(selection) #turn on and off
    if selection == true || selection.downcase == 'true'
      true
    elsif selection == false || selection.downcase == 'false'
      false
    end
  end

  def allow_create_artists(artist_selection)
    if artist_selection == true || artist_selection.downcase == 'true' || artist_selection.downcase == 'yes'
      true
    elsif artist_selection == false || artist_selection.downcase == 'false'
      false
    end
  end

end
