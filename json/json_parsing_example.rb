require 'json'

json = File.read('json_example.json')

# p json

json_parse = JSON.parse(json) #json variable from line 3

p json_parse.class
