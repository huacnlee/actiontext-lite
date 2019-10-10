# ActionText Lite

Lite version of the ActionText.

[ActionText Lite 中文说明)(https://ruby-china.org/topics/39130)

## Why use Lite version?

- Action Text integration Trix by default, but that not useful, our users and editors does not like it 😩.
- Active Storage as attachments, sometimes not the best choice, we need public image URLs, so we need CarrierWave.
- Action Text has default HTML sanitize rules, but it too strict, we need text color, image width, and other style attributes... 🥺

## Features

- Same API with ActionText core features, just add Gem to use, no need change codes.🎊
- Give you a clean rich text feature, there is no Trix, no complex HTML sanitize, no ActiveStoreage attachments.

## Using

Add gem into your Gemfile:

```rb
gem "actiontext-lite"
```

Generate ActionText migrations:

> 🎁ActionText Lite used same table name `action_text_rich_texts` like ActionText, so it can be easily combined with existing ActionText projects.

```bash
$ rails action_text_lite:install
```
