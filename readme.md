Made with Spring-Boot and oauth2. All data provided by spring-rest-repository. 

Initial user data defined in data.sql. (admin.admin, john.doe). 

Token how-tos defined in application.properties. 

This application functions as both an auth server and a resource server in oauth2 terminology. 
The servers are defined in security/AuthServerConfig.java and security/ResourceServerConfig.java.

