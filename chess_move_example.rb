#!/usr/bin/env ruby

$LOAD_PATH << './lib'
require 'lib/chess_moves'

brick = ARGV[0]
value = ARGV[1]

ChessMoves::Digits.new(brick, value).print_digits
