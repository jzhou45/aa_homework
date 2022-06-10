class Map
    def initialize
        @ivar = []
    end

    def set(key, value)
        @ivar.each_with_index { |kv, idx| @ivar[idx] = [key, value] if kv[0] == key }
        @ivar << [key, value]
    end

    def get(key)
        @ivar.each { |kv| return v if kv[0] == key }
    end

    def delete(key)
        @ivar.each_with_index do |kv, idx|
            if key == kv[0]
                @ivar.delete_at(idx)
                break
            end
        end
    end

    def show
        p @ivar
    end

end

# abc = Map.new
# (0..10).each { |num| abc.set(num, num + 1) }
# abc.show
# abc.set(0, "foo")
# abc.show
# abc.set(11, "foo")
# abc.show
# abc.delete(0)
# abc.show