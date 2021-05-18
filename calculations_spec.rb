#!/usr/bin/env ruby

require_relative 'calculations'

tests = [
  -> { add(2, 1) == 3 },
  -> { substract(2, 1) == 1 },
  -> { multiply(2, 1) == 2 },
  -> { divide(2, 1) == 2 }
]

if tests.all? &:call
  exit 0
else
  puts tests.select { |t| !t.call }
  exit 1
end
