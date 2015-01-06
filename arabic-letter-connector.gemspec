$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'persian-letter-connector/version'

Gem::Specification.new do |s|

  s.name          = 'persian-letter-connector'
  s.version       = PersianLetterConnector::VERSION
  s.date          = '2014-06-01'
  s.summary       = 'Persian Letter Connector'
  s.description   = 'A tool to replace generic disconnected Persian letters with their connected counterparts.'
  s.authors       = ["Sinan Taifour", "Ahmed Nasser"]
  s.email         = 'heidary.pooria@gmail.com'
  s.homepage      = 'http://github.com/p1heidary/persian-letter-connector'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']

end
