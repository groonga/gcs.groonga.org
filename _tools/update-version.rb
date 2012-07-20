#!/usr/bin/env ruby

require "open-uri"
require "json"

SOURCE_URL = "http://registry.npmjs.org/gcs"

def version
  @version ||= fetch_master_version
end

def fetch_master_version
  registry = open(SOURCE_URL) do |registry_json|
    JSON.parse(registry_json.read)
  end
  registry["dist-tags"]["latest"]
end

def config_file
  File.join(File.dirname(__FILE__), "..", "_config.yml")
end

def update_config
  config = File.read(config_file)
  updated_config = config.gsub(/version: .+/, "version: #{version}")

  File.open(config_file, "w") do |config_file|
    contents = updated_config
    config_file.puts(contents)
  end

  puts "The version number has been updated to #{version} successfully."
end

update_config
