require_relative 'words_from_string'
require "test/unit"

class TestWordsFromString < Test::Unit::TestCase
    def test_empty_string
        assert_equal([], words_from_string(""))
        assert_equal([], words_from_string("    "))
    end
    
    def test_single_word
        assert_equal(["cat"], words_from_string("cat"))
        assert_equal(["cat"], words_from_string(" cat "))
    end
    
    def test_many_word
        assert_equal(["the", "cat", "is", "cute"], words_from_string("the cat is cute"))
    end
    def test_ignores_punctuation
        assert_equal(["the", "cat's", "cute"], words_from_string("<the!> cat's, -cute-"))
    end
end