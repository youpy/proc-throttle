# proc-throttle [![Build Status](https://secure.travis-ci.org/youpy/proc-throttle.png)](http://travis-ci.org/youpy/proc-throttle)

Proc#throttle: throttling calls

## Installation

Add this line to your application's Gemfile:

    gem 'proc-throttle'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install proc-throttle

## Usage

    count = 0

    proc = Proc.new do |increment|
      count += increment || 1
    end

    throttled_proc = proc.throttle(1)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
