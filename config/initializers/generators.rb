Rails.application.config.generators do |generator|
  generator.scaffold_stylesheet false
  generator.orm :active_record, primary_key_type: :uuid
end
