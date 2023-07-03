# Salesforce Apex Code Snippet - Delete Debug Logs

This code snippet demonstrates how to delete Debug logs in Salesforce using Apex.

## Description
The provided code snippet retrieves a list of Apex logs using a SOQL query, limits the result to 100 records, and then proceeds to delete each log using the Salesforce REST API.

## Prerequisites
Before using this code, make sure you have the following:

- Salesforce Developer Edition or sandbox environment.
- Sufficient user permissions to access and delete Apex logs.
- Basic knowledge of Salesforce Apex programming language.
- A valid Salesforce session ID with appropriate access rights.

## Usage
To use this code snippet, follow the steps below:

1. Copy the code snippet into a new Apex class or an existing one.
2. Save the Apex class in your Salesforce org.
3. Execute the code by invoking the appropriate method or running the script.
4. Check the debug logs to view the status code returned for each deletion operation.

## Code Explanation
The code snippet performs the following steps:

1. Queries a list of Apex logs using the `SELECT` statement and stores them in the `logLst` variable.
2. Iterates over each Apex log in the `logLst` list.
3. Creates an instance of the `Http` class to handle HTTP requests.
4. Creates an instance of the `HttpRequest` class and sets the endpoint URL for deleting the specific Apex log.
5. Sets the HTTP method to `DELETE` to indicate the intention to delete the log.
6. Sets the appropriate authorization header using the Salesforce session ID.
7. Sends the HTTP request to delete the Apex log.
8. Retrieves the HTTP response and logs the status code using the `System.debug()` method.

## Important Note
- This code snippet deletes Apex logs permanently from your Salesforce org. Ensure that you understand the implications before executing the code in a production environment.

## Contributing
Contributions, issues, and feature requests are welcome. You may fork this repository and submit a pull request to contribute to the code snippet.

## License
This code snippet is licensed under the [MIT License](https://opensource.org/licenses/MIT).
