class Preference < ActiveRecord::Base

  def song_sort_order=(sort_direction) #controls asc or desc?
    sort_direction
  end

  def artist_sort_order=(sort_method) #control default sort order of /artists page
    @sort_method = sort_method
  end
  def artist_sort_order
    @sort_method
  end
  def allow_create_songs=(selection) #turn on and off
    selection
  end

  def allow_create_artists=(artist_selection)
    @artist_selection = artist_selection
  end

end
