def backerkats
  @backerkats ||= []
end

def create_backerkat(name, email)
  {name: name, email: email}
end

def add_backerkat(backerkat)
  backerkats << backerkat
end