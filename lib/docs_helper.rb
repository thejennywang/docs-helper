def backerkats
  @backerkats ||= []
end

def create_backerkat(name, email)
  {name: name, email: email}
end

def add_backerkat(backerkat)
  backerkats << backerkat
end

def remove_backerkat(email)
  backerkats.pop{ |kat| kat[:email] = "jenny@backerkit.com"}
end