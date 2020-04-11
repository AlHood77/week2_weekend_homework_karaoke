class Playlist

    attr_reader :genre, :song_list

    def initialize(genre, song_list)
        @genre = genre
        @song_list = song_list
    end
    
end