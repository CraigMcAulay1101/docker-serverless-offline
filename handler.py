import json
import http.client as httplib

def lambda_handler(event, context):
    message = 'Hello World!'
    
    return {
        'statusCode': httplib.OK,
        'body': json.dumps({'message': message})
    }