#!/usr/bin/env ruby

require_relative './config/environment'

cli = CLI.new
cli.run
# cli.find_adjacent(0,[0,3,3,7,5,3,11,1])