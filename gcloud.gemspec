# -*- encoding: utf-8 -*-
require File.expand_path("../lib/gcloud/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "gcloud"
  gem.version       = Gcloud::VERSION

  gem.authors       = ["Silvano Luciani", "Mike Moore", "Chris Smith"]
  gem.email         = ["silvano@google.com", "mike@blowmage.com", "quartzmo@gmail.com"]
  gem.description   = "Gcloud is the official library for interacting with Google Cloud."
  gem.summary       = "API Client library for Google Cloud"
  gem.homepage      = "http://googlecloudplatform.github.io/gcloud-ruby/"
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- docs/*`.split("\n")
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.0.0"

  gem.extra_rdoc_files = ["OVERVIEW.md", "AUTHENTICATION.md", "CHANGELOG.md"]
  gem.rdoc_options     = ["--main", "OVERVIEW.md",
                          "--exclude", "lib/google/"]

  gem.add_dependency                  "grpc", "~> 0.13.1"
  gem.add_dependency                  "google-protobuf", "= 3.0.0.alpha.5.0.5.1"
  gem.add_dependency                  "google-api-client", "~> 0.8.3"
  gem.add_dependency                  "mime-types", "~> 2.4"
  gem.add_dependency                  "digest-crc", "~> 0.4"
  gem.add_dependency                  "zonefile", "~> 1.04"

  gem.add_development_dependency      "minitest", "~> 5.7"
  gem.add_development_dependency      "minitest-autotest", "~> 1.0"
  gem.add_development_dependency      "minitest-focus", "~> 1.1"
  gem.add_development_dependency      "minitest-rg", "~> 5.2"
  gem.add_development_dependency      "autotest-suffix", "~> 1.1"
  gem.add_development_dependency      "rdoc", "~> 4.0"
  gem.add_development_dependency      "rubocop", "<= 0.35.1"
  gem.add_development_dependency      "httpclient", "~> 2.5"
  gem.add_development_dependency      "simplecov", "~> 0.9"
  gem.add_development_dependency      "coveralls", "~> 0.7"
  gem.add_development_dependency      "yard", "~> 0.8"
end
