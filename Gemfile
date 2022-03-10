# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "dotenv-rails", groups: [:development, :test, :production]

gem "decidim", "0.25.2"
gem "decidim-ine", path: "decidim-module-ine"

gem "bootsnap", "~> 1.3"
gem "puma", ">= 5.0.0"
gem "faker", "~> 2.14"
gem "wicked_pdf", "~> 2.1"
gem "clockwork"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  gem "decidim-dev", "0.25.2"
  gem "pry"
  gem "standard"
  gem "rspec-rails"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 4.0"
  gem "ripper-tags"
end

group :production, :staging do
  gem "sidekiq"
end
