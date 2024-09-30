Today we will explore an interesting scenario on how to pass sObject/ sObjects as arguments (workaround solution) in future method in Salesforce 🤠 

What are future methods in simple terms? 🤔 

As the name itself says, it runs in the future/ asynchronously when the system becomes available.

✅ Primary Advantages of the @future method are

📌 Separate the DML transactions to avoid Mixed DML errors/ Apex CPU limit errors.
📌 Make a webservice callouts from triggers.
📌 Since it is an asynchronous feature, you will get a Total number of SOQL queries issued as 200 (100 in synchronous), heap size as 12 MB (6 MB in synchronous), and Maximum CPU time on the Salesforce servers as 60 sec (10 sec in synchronous).

❌ Major Disadvantages are

📌 You cannot call another future method in the running future method.
📌 You can pass only primitive data type as an argument to the future methods.
📌 Future methods won't return anything.

However in some rare cases/ scenarios, we might need to pass the complete sObject as a argument to the future method.

Now, we are going to see how we can pass sObject/ sObjects as an argument to the future method with the help of the attached sample code 🙄 

If you normally try to add the sObject/ sObjects as an argument to the future method, you will receive an error 😑 

but as a "workaround"

We can serialize the sObject/ sObjects and pass it as a parameter to the future method and deserialize it inside the future method 🙂 

🖥 JSON.serialize - Serializes Apex objects into JSON content

🖥 JSON.deserialize - Deserializes the specified JSON string into an Apex object of the specified type.

Note: The code which I used is a workaround sample code for demonstration purposes only. Actual implementations might vary.

Happy Trailblazing 🙃 
