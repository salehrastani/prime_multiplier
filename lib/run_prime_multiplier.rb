require_relative 'prime'
require_relative 'multiplied_table'

size = ARGV[0].to_i

primes = Prime.prime_numbers(size)
table = MultipliedTable.new(primes)
table.create_table
table.render_table