json.extract! gift_entry, :id, :received_date, :contents, :message, :created_at, :updated_at
json.url gift_entry_url(gift_entry, format: :json)