import requests




# Define the API endpoint
api_url = 'https://example-api.com/data'
api_key = 'SEUNiTMcpNyXKXnnaNTz70pe0kWu'

# Call the API with the Authorization header
response = requests.get(api_url, headers={'Authorization': f'Bearer {api_key}'})
data = response.json()

# Print the response data
print(data)