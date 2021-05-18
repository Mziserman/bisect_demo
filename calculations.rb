def add(a, b)
  a + b
end

def multiply(a, b)
  b.times.sum(a)
end

def divide(a, b)
  return a if b == 1

  count = 0
  acc = 0
  loop do
    count += 1
    acc += b

    break if acc >= substract(a, b)
  end
  acc + a % b
end

def substract(a, b)
  a - b
end
