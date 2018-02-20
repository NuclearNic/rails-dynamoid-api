# Own config for connection to local DynamoDB

Dynamoid.configure do |config|
  config.access_key = 'REPLACE_WITH_ACCESS_KEY_ID'
  config.secret_key = 'REPLACE_WITH_SECRET_ACCESS_KEY'
  config.region = 'us-west-2'
  config.namespace = "customer_profile_poc" # To namespace tables created by Dynamoid from other tables you might have. Set to nil to avoid namespacing.
  config.endpoint = 'http://localhost:8000' # [Optional]. If provided, it communicates with the DB listening at the endpoint. This is useful for testing with [Amazon Local DB] (http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html).
end
