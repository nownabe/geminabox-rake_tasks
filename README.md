# Geminabox::RakeTasks
To publish gems to your private gem in a box server instead of rubygems.org.

## Installation
Add this line to your gemspec:

```ruby
spec.add_development_dependency "geminabox-rake_tasks"
```

And then execute:

```bash
bundle
```

## Usage
1. Replace `require "bundler/gem_tasks"` with `require "geminabox/rake_tasks"` in `Rakefile`.
2. Configure your geminabox server if you have not yet. (`bundle exec gem inabox -c`)
3. Use rake as `bundler/gem_tasks`.

## Rake Tasks
```
$ bundle exec rake -T
rake build          # Build yourgem-0.1.0.gem into the pkg directory
rake install        # Build and install yourgem-0.1.0.gem into system gems
rake install:local  # Build and install yourgem-0.1.0.gem into system gems without network access
rake release        # Create tag v0.1.0 and build and push yourgem-0.1.0.gem to your gem in a box server
```

Use `bundle exec rake release` to publish gems.

```
$ bundle exec rake release
yourgem 0.1.0 built to pkg/yourgem-0.1.0.gem.
Tagged v0.1.0.
Pushed git commits and tags.
Pushed yourgem 0.1.0
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/geminabox-rake_tasks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
