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

def anagram?(string1, string2)
  string1 = string1.chars.sort.join
  string2 = string2.chars.sort.join
  if string1 == string2
    flag = 1
  else
    flag = 0
  end
  flag
end

def space_replace(string)
  0.upto(string.length - 1) do|index|
    if string[index] == ' '
      string[index] = '%20'
    end
  end
  string
end


def iter_robot(n)
  right = 0
  down = 0

  while true
    print "right: ", right, "  down: ", down, $/
    if right != n-1 && down != n-1
      # possible moves
      move = rand(2)
      # actual move
      if move == 0
        right += 1
      else
        down += 1
      end
    elsif right == n-1 && down != n-1
      down += 1
    elsif down == n-1 && right != n-1
      right += 1
    else
      break
    end
  end
end

#puts space_replace('this is a main')
puts iter_robot(4)

