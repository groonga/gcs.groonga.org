#!/usr/bin/ruby1.9.1

require "open-uri"
require "json"
require "fileutils"

PACKAGE_JSON_URL = "https://raw.github.com/groonga/gcs/master/package.json"

def version
  @version ||= fetch_master_version
end

def fetch_master_version
  manifest = open(PACKAGE_JSON_URL) do |package_json|
    JSON.parse(package_json.read)
  end
  manifest["version"]
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

FileUtils.cp(config_file, "#{config_file}.bak")

update_config

0
