(.venv) bharathkumardasaraju@azure-samples-contoso-chat$ az login --use-device-code
To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code NJSKTJT62 to authenticate.

Retrieving tenants and subscriptions for the selection...

[Tenant and subscription selection]

No     Subscription name      Subscription ID                       Tenant
-----  ---------------------  ------------------------------------  -----------------
[1] *  Azure subscription 1   fda65227-e02e-4d3b-9ae4-f32fb9f280fd  Default Directory
[2]    bharath-ai-sg-test-01  6ced41d4-5c31-4325-b2c0-ac5cf2dac444  Default Directory
[3]    BharathTest            2359f93a-8785-4e1e-8b99-8def74b02d69  bharathkumaraju

The default is marked with an *; the default tenant is 'Default Directory' and subscription is 'Azure subscription 1' (fda65227-e02e-4d3b-9ae4-f32fb9f280fd).

Select a subscription and tenant (Type a number or Enter for no changes): 1

Tenant: Default Directory
Subscription: Azure subscription 1 (fda65227-e02e-4d3b-9ae4-f32fb9f280fd)

[Announcements]
With the new Azure CLI login experience, you can select the subscription you want to use more easily. Learn more about it and its configuration at https://go.microsoft.com/fwlink/?linkid=2271236

If you encounter any problem, please open an issue at https://aka.ms/azclibug

[Warning] The login output has been updated. Please be aware that it no longer displays the full list of available subscriptions by default.

(.venv) bharathkumardasaraju@azure-samples-contoso-chat$



(.venv) bharathkumardasaraju@azure-samples-contoso-chat$ azd auth login
  Logged in to Azure as dbkraju@hotmail.com
(.venv) bharathkumardasaraju@azure-samples-contoso-chat$


