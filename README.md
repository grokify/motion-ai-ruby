Motion AI Ruby SDK
==================

Simple SDK for Motion AI REST API

## Installation


```
$ gem install motion-ai
```

## Usage

```
require 'motion-ai'

client = MotionAI::Client.new bot: 'my_api_key', 'my_bot_id'

res = client.message_bot msg: 'Hello Bot!', session: '12345'
```