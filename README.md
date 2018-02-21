# README

* install DynamoDB locally and run with `$java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb`
* the application is configured in `aws_dynamodb.rb` to talk to port 8000


Some findings relationships between tables using Dynamoid:

* created relationship Customer has_many Products. Below is the structure of 
the data in the Customers table. Product ids get saved in a list (type string set).

{
    "Item": {
        "created_at": {
            "N": "1519200740.6847546"
        },
        "updated_at": {
            "N": "1519211681.9504058"
        },
        "products_ids": {
            "SS": [
                "575bc9d0-e05e-45fc-a003-206106ca273e",
                "6e3639e8-8679-45a8-bda5-37b3ac571d2f"
            ]
        },
        "first_name": {
            "S": "Name101"
        },
        "email": {
            "S": "user101@email.com"
        },
        "cid": {
            "S": "101"
        }
    }
}

* below is a link that describes the use of one-to-many tables:
https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GuidelinesForItems.html 