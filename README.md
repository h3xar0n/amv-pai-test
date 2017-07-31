# AVM RSpec Test

For this exercises, I adapted the test I created for Michael Hartl's Ruby on
Rails Tutorial. That test was written in Minitest, so I checked it against
the RSpec test created for the CareerFoundry course since AMV also uses RSpec.

## Installation

If you have the `test` directory and you have already written some tests,
consider converting them from Minitest to RSpec. Either way, remove the `test`
file before moving forward; RSpec will replace it with `spec`.

Add the following gems to your Gemfile:

```Ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails', '~> 4.0'
end
```

In the terminal, run `bundle install`

Add the directories above to their corresponding places in your `spec` file.

### Pathnames

The tests use specific pathnames that may not match your setup. For instance,
the pathname for signing up in the test is `signup_path`. Before running the
tests, ensure that all pathnames match the way that you set up your routes.

### FactoryGirl

FactoryGirl is used to provide some fixed information (in this case, the user,
Kevin Flynn) in order to run the tests. Another approach is to use fixtures,
but this can be more complicated and lead to confusing test results.

### Biting the Bullet

When you're ready to give this a shot, make sure you are in the app's root
directory and run `bundle exec rspec`, followed by the specific file path of
the test you want to run. For example, if you want to check if signup works, run
`bundle exec rspec spec/requests/authentication_pages_spec.rb`

If you'd like to run everything at once, just run `bundle exec rspec spec/`.

## Debugging

If this doesn't work, and you have already double checked that all pathnames are
consistent with your app, please email me at aron@eideldev.com and let's go
through it together. We will eventually figure it out and probably improve the
test in the process.
