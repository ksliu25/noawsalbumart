# Noawsalbumart

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'noawsalbumart'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noawsalbumart

## Usage

NoAWSAlbumArt was mainly an exercise in building an alternative to Amazon Album Art, which works great, but does depend on having an AWS account. This gem simply scrapes Amazon's search result's with a hard-code query, a fairly brute force method and fragile to amazon's changes of their search bar.

I mainly chose to use amazon simply because of image normalization for most album art at certain sizes.

To use, simply search using Noawsalbumart("artist name", "album name") to return a url to a small album image.

<pre><code> Noawsalbumart.search("Kanye West", "Graduation") </code></pre>
returns
<pre><code> http://ecx.images-amazon.com/images/I/516is-FPgmL._AA160_.jpg </code></pre>
![graduation](http://ecx.images-amazon.com/images/I/516is-FPgmL._AA160_.jpg)

If provided with nil or an empty string, the search will return "Album Art Not Found".

<pre><code> Noawsalbumart.search("", nil) </code></pre>
returns
<pre><code> "Album Art Not Found" </pre></code>

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/noawsalbumart. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

