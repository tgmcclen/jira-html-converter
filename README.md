# Jira HTML Converter

This gem provides a small command line utility to convert Atlassian Jira exports (in CSV format) that have an HTML `Description` field (common when 
using the jEditor plugin) to Markdown.  This allows you to then import the Jira data into another instance that is using Markdown for the `Description` field                                           
 
## Installation

Install the gem

    $ gem install jira-html-converter

## Usage

Once installed, the gem provides an executable:

```bash
$ jira-html-converter convert SOURCE
```

`SOURCE` must be a Jira export file with a `Description` field.  The file must be in CSV format.

The command will output a new converted file in the same directory with a `-converted` suffix.
 
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tgmcclen/jira-html-converter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
