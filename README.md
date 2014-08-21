rb-api-streaming
================

A sample Ruby application that connects to OANDA's HTTP based events stream. This application has been tested against ruby version 2.1.2.

### Setup

Clone this repo to the location of your choice

Update the following values in the connect_to_stream method in streaming.py

* environment
* accessToken (Authorization)
* accountIds
* showHeartBeats (toggles the displaying of the stream's heartbeats. 0 for don't show heartbeats, 1 for show heartbeats)

### Usage

~~~
ruby streaming.rb
~~~

### Sample Output

    {"heartbeat":{"time":"2014-08-21T14:11:45.000000Z"}}
    {"transaction":{"id":654889482,"accountId":8703506,"time":"2014-08-21T14:11:50.000000Z","type":"STOP_LOSS_FILLED","tradeId":654889415,"instrument":"SGD_HKD","units":1,"side":"sell","price":6.20147,"pl":-0.0004,"interest":0,"accountBalance":99667.0615}}
    {"heartbeat":{"time":"2014-08-21T14:12:00.000000Z"}}
    {"heartbeat":{"time":"2014-08-21T14:12:15.000000Z"}}
    {"transaction":{"id":654889755,"accountId":8703506,"time":"2014-08-21T14:12:22.000000Z","type":"TAKE_PROFIT_FILLED","tradeId":654889611,"instrument":"HK33_HKD","units":1,"side":"buy","price":25030,"pl":-0.5653,"interest":-0.0001,"accountBalance":99666.4961}}
    {"heartbeat":{"time":"2014-08-21T14:12:30.000000Z"}}
    {"transaction":{"id":654889848,"accountId":8703506,"time":"2014-08-21T14:12:33.000000Z","type":"TAKE_PROFIT_FILLED","tradeId":654889758,"instrument":"BCO_USD","units":1,"side":"sell","price":101.602,"pl":-0.0219,"interest":0,"accountBalance":99666.4742}}

### More Information

[http://developer.oanda.com/](http://developer.oanda.com/docs/v1/stream/#events-streaming)
