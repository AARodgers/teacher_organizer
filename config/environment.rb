# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'
