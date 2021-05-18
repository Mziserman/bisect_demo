#!/usr/bin/env ruby

require_relative 'calculations'

tests = [
  -> { add(2, 1) == 3 },
  -> { substract(2, 1) == 1 },
  -> { multiply(2, 1) == 2 },
  -> { multiply(2, 2) == 4 },
  -> { multiply(3, 12) == 36 },
  -> { divide(2, 1) == 2 },
  -> { divide(1, 2) == 0.5 },
  -> { divide(21, 3) == 7 }
]

if tests.all? &:call
  exit 0
else
  puts tests.select { |t| !t.call }
  exit 1
end
