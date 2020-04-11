require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../rooms')
require_relative( '../playlist')
require_relative( '../groups')


class TestRooms < MiniTest::Test

    def setup()
        @room = Rooms.new(1, 40, 6)
        @room2 = Rooms.new(2, 100, 5)
        song_list1 = ["Sweet Caroline", "Wonderwall", "Losing my Religion", "My Way"]
        @playlist = Playlist.new("Rock", song_list1)
        @people2 = [
            {
            name: "Alan",
            monies: 10,
            favourite_song: "Sweet Caroline" 
            },
            {
            name: "John",
            monies: 20,
            favourite_song: "Wonderwall"
            },
            {
            name: "Dave",
            monies: 20,
            favourite_song: "Losing my Religion"
            },
            {
            name: "Paul",
            monies: 15,
            favourite_song: "My Way"
            },
            {
            name: "Brian",
            monies: 10,
            favourite_song: "Suspicious Minds"
            },
            {
            name: "Hazel",
            monies: 15,
            favourite_song: "Don't Stop Believin"
            }
        ]
    
        @group2 = Groups.new(@people2)

        end

        #testing room has a number
        def test_room_has_room_number()
            assert_equal(1, @room.room_number())
        end

        #testing room has an entry fee
        def test_room_has_cost_of_entry()
            assert_equal(40, @room.cost_of_entry())
        end

        #testing that the karaoke room is empty
        def test_karaoke_room_is_empty()
            assert_equal(0, @room.karaoke_room_occupied())
        end

        #testing that group of people can be added to room

        def test_check_in_group_to_room()
            @room.check_in(@group2)
            assert_equal(1, @room.karaoke_room_occupied())
        end

        #testing that group of people can be cleared from room

        def test_check_group_out_of_room()
            @room.check_in(@group2)
            @room.check_out()
            assert_equal(0, @room.karaoke_room_occupied())
        end

        #testing karaoke machine playlist is empty

        def test_playlist_is_empty()
            assert_equal(0, @room.room_playlist())
        end

        #test playlist can be added to room's karaoke machine
        def test_add_playlist_to_rooms_karaoke_machine
            @room.add_playlist(@playlist)
            assert_equal(1, @room.room_playlist())
        end

        #testing that playlist can be cleared
        def test_clear_playlist_from_karaoke_machine
            @room.add_playlist(@playlist)
            @room.clear_playlist()
            assert_equal(0, @room.room_playlist)
        end

        






    end