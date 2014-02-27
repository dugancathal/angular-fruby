# Angular, Faye, and Rails, OH MY

Wanted to do a quick spike to see how easy it was to hook up Faye, Rails and
Angular. Turned out to be pretty simple.

## Versions (and that kind of thing)

* Rails 4.1.0.rc1
* Angular 1.2.9
* Faye 1.0.1

## Setup

To get up and running:

    git clone http://github.com/dugancathal/angular-fruby.git
    cd angular-fruby
    bundle install
    bin/rails s

    # In another terminal
    rackup faye.ru

## Notables

Take a look at [angular-faye](app/assets/javascripts/angular-faye.js.coffee) for
the guts of the Faye stuff.

Take a look at [MessagesController](app/controllers/messages_controller.rb) for
how to send information to Faye.

The actual application logic is in the
[HomeCtrl](app/assets/javascripts/angular/controllers/HomeCtrl.js.coffee).
