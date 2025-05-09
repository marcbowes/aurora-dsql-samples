# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-dsql'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby - Amazon Aurora DSQL'
  spec.description   = 'Official AWS Ruby gem for Amazon Aurora DSQL. This gem is part of the AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['aws-dr-rubygems@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir["LICENSE.txt", "CHANGELOG.md", "VERSION", "lib/**/*.rb", "sig/**/*.rbs"]

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-dsql',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-dsql/CHANGELOG.md'
  }

  spec.add_dependency('aws-sdk-core', '~> 3', '>= 3.210.0')
  spec.add_dependency('aws-sigv4', '~> 1.5')

  spec.required_ruby_version = '>= 2.5'
end
