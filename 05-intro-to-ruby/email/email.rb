require 'sendgrid-ruby'

from = SendGrid::Email.new(email: 'orlando.caraballo@nycda.com')
subject = 'Hello World from the SendGrid Ruby Library!'
to = SendGrid::Email.new(email: 'orlando.caraballo@nycda.com')

# set the content to send in the email
content = SendGrid::Content.new(type: 'text/plain', value: 'Hello, Email!')

# set the mail attribute values
mail = SendGrid::Mail.new(from, subject, to, content)

# provide it with your sendgrid api key
sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])

# sends the email and captures the response in the variable
#   named 'response'
response = sg.client.mail._('send').post(request_body: mail.to_json)

# display the response status code and body
puts response.status_code
puts response.body
