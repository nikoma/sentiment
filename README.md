# Sentiment

Sentiment is a simple gem which allows you to get the sentiment of a string. It returns 1 for positive words or sentences, -1 for negative ones and 0 if neutral.

## Installation

Add this line to your application's Gemfile:

    gem 'sentiment'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentiment

## Basic usage

Sentiment Analysis

require 'sentiment'  

client = Sentiment::Client.new("8w7d64oqweryiqweo87qnxtqwi47xqn3i4tisq7")

sentiment = client.sentiment("I love Ruby!","en")  
`=> 1`

or
sentiment = client.sentiment("amore","it")

`=> 1`  

At this time the API supports the following languages:  
* English (en)  
* German (de)  
* Italian (it)  
* Spanish (es)  
* French (fr)  
* Turkish (tr)  


KNOWN ISSUE:
In case you get a `"NoMethodError: undefined method `stringify_keys' for #<HTTParty::Response:0x007fa9231ab1b0>"`
- It's telling you that the api key is invalid and therefore can't handle the server response. Please get a valid api key. The key in this document can be used for limited testing as well. 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
