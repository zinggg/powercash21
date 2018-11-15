# Powercash21

POWERPAY21 API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'powercash21'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install powercash21

## Setup

Initialize the the gem by setting your personal API secret key:

```
Powercash21.secret_key = 'YOUR_SECRET_KEY'
```

Or create ENV variable POWERCASH21_SECRET_KEY ( ENV['POWERCASH21_SECRET_KEY'] ) with you API KEY

## Usage

```ruby
powercash_client = Powercash21::Client.new

url = 'pay/backoffice/tx_diagnose'
params = {
    merchantid: "powercash_21_test_MID",
    orderid: "MY_ORDER_ID",
    type: "orderid",
    start_date: "01.10.2018",
    end_date: "16.01.2018"
}

response = powercash_client.post(url, params)
response.body
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/powercash21. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Powercash21 project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/powercash21/blob/master/CODE_OF_CONDUCT.md).
