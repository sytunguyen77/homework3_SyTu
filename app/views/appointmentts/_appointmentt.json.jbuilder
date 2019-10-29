json.extract! appointmentt, :id, :visit, :physician_id, :patient_id, :created_at, :updated_at
json.url appointmentt_url(appointmentt, format: :json)
