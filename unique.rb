require 'pry'
def unique?(string)
  flag = 0
  0.upto(string.length - 1) do|index|
    1.upto(string.length - 1) do|index2|
      if index != index2
        if string[index] == string[index2]
          flag = 1
          return flag
        end
      end
    end
  end
  flag
end


def remove_unique(string)

  0.upto(string.length - 1) do|index|
    1.upto(string.length - 1) do|index2|
      if index != index2
        if string[index] == string[index2]
          string.delete! "#{string[index]}"
        end
      end
    end

  end
   string
end

puts remove_unique("this is")
