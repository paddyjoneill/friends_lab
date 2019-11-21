def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  snacks = person[:favourites][:snacks]
  for snack in snacks
    if snack == food
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total_cash = 0
  for person in people
    total_cash += person[:monies]
  end
  return total_cash
end

def loan_money(lender, loaner, amount)
  lender[:monies] -= amount
  loaner[:monies] += amount
end

def total_snacks(people)
  snacks_array = []
  for person in people
    snacks_array.concat(person[:favourites][:snacks])
  end
  return snacks_array.length
end

def no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates << person[:name]
    end
  end
  return no_mates
end
