class Bottles
    def song
        verses(99, 0)
    end

    def verses(hi, lo)
        hi.downto(lo).map { |n| verse(n) }.join("\n")
    end

    def verse(n)
        "#{more(n, true)} bottle#{prural(n)} of beer on the wall, " \
        "#{more(n, false)} bottle#{prural(n)} of beer.\n" \
        "#{n > 0 ? "Take #{n > 1 ? 'one' : 'it'} down and pass it around" : 'Go to the store and buy some more'}, " \
        "#{n - 1 < 0 ? 99 : more(n - 1, false)} bottle#{prural(n-1)} of beer on the wall.\n"
    end

    def prural(n)
        's' if n != 1
    end

    def more(n, isCap)
        n == 0 ? (isCap ? 'No more' : 'no more') : n
    end
end
