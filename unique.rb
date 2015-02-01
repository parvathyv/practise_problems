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

puts space_replace('this is a main')
