Dictum.configure do |config|
  config.output_path = Rails.root.join('docs')
  config.root_path = Rails.root
  config.output_filename = 'Documentation'
  config.output_format = :markdown
  config.index_title = 'Cinema API documentation'
end
