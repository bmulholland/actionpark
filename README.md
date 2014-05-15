actionpark
==========

A reputation for poorly designed, unsafe rides; underaged, undertrained, and often under-the-influence staff; intoxicated, unprepared visitors; and a consequently poor safety record

![Action Park Logo](http://upload.wikimedia.org/wikipedia/en/a/a1/Action_Park_logo.png "Action Park Logo")

###To install:

Add the ActionPark to your Gemfile

```
gem 'actionpark', github: "bmulholland/actionpark"
```

```
bundle install
```

Add the migrations

```
rake actionpark:install:migrations
```

```
rake db:migrate
```

###To Run Tests:

Prepare your test database

```
rake db:test:prepare
```

```
rspec spec
```

