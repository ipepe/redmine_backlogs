redmine_version_file = File.expand_path("../../../lib/redmine/version.rb",__FILE__)
if (!File.exists? redmine_version_file)
  redmine_version_file = File.expand_path("lib/redmine/version.rb");
end
version_file = IO.read(redmine_version_file)
redmine_version_minor = version_file.match(/MINOR =/).post_match.match(/\d/)[0].to_i
redmine_version_major = version_file.match(/MAJOR =/).post_match.match(/\d/)[0].to_i

gem "holidays", "~>1.0.3"
gem "icalendar"
# Choose nokogiri depending on RM version. This is done to avoid conflict with
# RM 2.3 which pinned nokogiri at "<1.6.0" for group :test.
gem "open-uri-cached"
gem "prawn", "1.3.0"
gem 'json'
gem "system_timer" if RUBY_VERSION =~ /^1\.8\./ && RUBY_PLATFORM =~ /darwin|linux/
gem 'activerecord-deprecated_finders', require: 'active_record/deprecated_finders'
# gem 'sidekiq', "3.1.4"

