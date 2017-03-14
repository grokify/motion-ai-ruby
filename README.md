Motion AI Ruby SDK
==================

Simple SDK for [Motion AI](https://motion.ai) REST API.

API endpoints:

Endpoint | Supported?
---------|-----------
`GET /messageBot` | yes
`POST /messsageHuman` | tbd
`GET /getConversations` | yes
`POST` Webhooks | tbd

## Installation

```
$ gem install motion-ai
```

## Usage

```ruby
require 'motion-ai'

client = MotionAI::Client.new 'my_api_key', 'my_bot_id'

res = client.message_bot msg: 'Hello Bot!', session: '12345'

res = client.get_conversations
```

For more information on the parameters that can be passed to the API,
see the [Motion AI API docs](http://docs.motion.ai/docs/api).

## Links

Project Repo

* https://github.com/grokify/motion-ai-ruby

Motion AI Docs

* http://docs.motion.ai/docs/api