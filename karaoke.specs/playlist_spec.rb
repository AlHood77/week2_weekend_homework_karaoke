require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../playlist' )

class TestPlaylist < MiniTest::Test

    def setup()
        song_list = ["Sweet Caroline", "Wonderwall", "Losing my Religion", "My Way"]
        @playlist = Playlist.new("Pop", song_list)

    end

    def test_playlist_has_genre()
        assert_equal("Pop", @playlist.genre())
    end

end