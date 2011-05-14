Image.class_eval do
  attachment_definitions[:attachment] = (attachment_definitions[:attachment] || {}).merge({
    :path => Rails.env.production? ? 'assets/products/:id/:style/:basename.:extension' : ':rails_root/public/assets/products/:id/:style/:basename.:extension',
    :storage => Rails.env.production? ? 's3' : 'filesystem',
    :s3_credentials => Rails.root.join('config', 's3.yml')
  })
end
