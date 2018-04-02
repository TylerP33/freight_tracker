# FreightTracker

Welcome to your freight_tracker!  This is a Sinatra web application that allows a trucking carrier to post loads and add route information to it accordingly.  When the carrier logs in, they will only see their load board (all their loads and routes).

The carrier will be able to edit the load or the route information, as well delete anything that has been added to the load board.  I wanted this to mock a real life load board, so seeing other carrier's loads was not an option.  With that being said, the ability to see other loads is availiable through some minor changes in the code.  Given the nature of the intedned functionality, I chose to make it private to the carrier.

## Installation

Clone this repository.

And then execute:

    $ bundle

Given the intent of the design, no dummy data will be needed.  Just make sure to always go to the home page (/loads, /routes will not work until logged in, naturally.).

After that, use shotgun to navigate the web app.

    $ shotgun


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TylerP33/freight_tracker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

This web app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FreightTracker project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Tylerp33/freight_tracker/blob/master/CODE_OF_CONDUCT.md).
