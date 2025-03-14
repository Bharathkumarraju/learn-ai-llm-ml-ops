# API Documentation

## Overview

This API is designed to provide access to our platform's data and services. You can use this API to fetch data, update data, delete data, or perform various operations. This document provides information on how to authenticate your requests, the available endpoints, and how to handle potential errors.

## Authentication

To authenticate your requests, you need to include your API key in the header of every HTTP request. The key should be included in the 'Authorization' field, prefixed with 'Bearer'. 

Here's an example of how to include the API key in a curl request:

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" https://api.ourplatform.com/endpoint
```

Please ensure to replace `YOUR_API_KEY` with your actual API key.

## Endpoints

### GET /users

This endpoint returns a list of all users.

Example request:

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" https://api.ourplatform.com/users
```

### POST /users

This endpoint creates a new user. The request body should include `name` and `email`.

Example request:

```bash
curl -X POST -H "Authorization: Bearer YOUR_API_KEY" -d '{"name":"John Doe", "email":"john@example.com"}' https://api.ourplatform.com/users
```

### DELETE /users/{id}

This endpoint deletes a user by ID.

Example request:

