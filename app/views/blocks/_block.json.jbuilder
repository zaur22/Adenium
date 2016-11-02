json.extract! block, :id, :name, :html, :css, :position, :created_at, :updated_at
json.url block_url(block, format: :json)