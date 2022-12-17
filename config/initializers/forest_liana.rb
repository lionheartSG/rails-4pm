ForestLiana.env_secret = Rails.application.secrets.forest_env_secret
ForestLiana.auth_secret = Rails.application.secrets.forest_auth_secret

ForestLiana.actions = [{  name: 'Total Quantities',  verb: 'GET',  path: '/total-quantities',  handler: 'TotalQuantity.total_quantities'}]
