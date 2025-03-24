
https://azure.github.io/Cloud-Native/30-days-of-ia-2024


https://azure.github.io/Cloud-Native/30-days-of-ia-2024/use-generative-ai-to-build-intelligent-apps

Build intelligent AI-Apps using Azure Services

1. Azure Application Platform
2. Azure Data Platform
3. Azure AI



how to build with cloud technologies like
Azure Kubernetes Service (AKS),
Azure App Service,
Secure API Management, and
GitHub Copilot


The application is built using a three-part architecture consisting of a
back end,
middleware, and
front end,

deployed on either Azure Kubernetes Service (AKS) or Azure App Service.
This architecture forms the foundation for integrating modern cloud and AI technologies.



Application flow
The content generation process in the application is simple yet powerful. Here is how the flow works, from the users perspective.

User-input. The user provides details, such as the type of content they need — whether its an email campaign, social media post, or blog article.

Back-end processing. The system retrieves necessary data, such as customer demographics, product details, and relevant information stored in the back end.

Content generation. The middleware communicates with "Azure OpenAI" Service to generate content based on the provided input and back-end data,
helping to ensure that the content is contextually relevant

Result display. The generated content is then displayed on the ReactJS front end, where the user can review, copy, and implement it directly into their marketing campaigns.




Azure OpenAI Service:
At the core of content generation is Azure OpenAI, which uses GPT models to create coherent and relevant content based on user input.
The Chat Completion API (GPT-4o) generates the text, while the embedding model helps ensure that data retrieved for content is semantically relevant to the user needs.


Azure Key Vault:
For secure storage of secrets such as API keys, credentials, and sensitive configuration data, Key Vault is integrated into the system.
This helps ensure that all sensitive data is stored securely and retrieved only when needed.


Microsoft Entra ID (formerly Azure Active Directory):
Microsoft Entra ID is used for authentication and identity management, supporting secure access to the back end and to APIs.
It helps effectively manage user roles and access permissions.


Managed identity:
The application uses managed identity to securely access Azure resources without hard-coding credentials.
This simplifies the authentication process when interacting with services like Key Vault and Azure Cosmos DB.


Azure App Service and Azure Kubernetes Service (AKS):
The application supports two deployment models: App Service and AKS.
Both provide scalable infrastructure but differ in flexibility
and complexity (more on this in the "Choosing the right deployment technology for you" section).


Azure API Management:
API Management manages the API gateway, controlling access between the front end, middleware, and back end.
With features like Cross-Origin Resource Sharing (CORS), throttling, rate limiting, and authentication,
API Management supports efficient communication and security across the system.





