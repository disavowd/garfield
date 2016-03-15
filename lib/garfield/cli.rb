require 'thor'

module Garfield
  class GuardfileGenerator < Thor
    desc 'hello', 'this will greet yowwww'
    long_desc <<-HELLO_WORLD

    `hello NAME` will print out a message to the person of your choosing.

    Brian Kernighan actually wrote the first "Hello, World!" program
    as part of the documentation for the BCPL programming language
    developed by Martin Richards. BCPL was used while C was being
    developed at Bell Labs a few years before the publication of
    Kernighan and Ritchie's C book in 1972.

    http://stackoverflow.com/a/12785204
    HELLO_WORLD
    def generate()
      extension = Garfield.get_file_count('rb') < Garfield.get_file_count('py') ? 'py' : 'rb'
      test_string = Garfield.get_test_string(extension)
      Garfield.write_guardfile(extension, test_string)
    end
  end
end
