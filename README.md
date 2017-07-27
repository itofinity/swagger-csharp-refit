# Swagger Codegen for the CSharpRefitCodegen library

## Overview
This is a generator for building C# Refit based REST API clinet libraries from swagger.json files.

### Why?
The existing Swagger code generators use [RestSharp](http://restsharp.org/) which is great, but I personally find bloated. I prefer the lightweight [Refit](https://github.com/paulcbetts/refit) approach.
The existing Swagger code generators for C# do not handle snake_case object names used by non-C# languages in their swagger.json.

## What's Swagger?
The goal of Swagger� is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via Swagger, a consumer can understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, Swagger removes the guesswork in calling the service.


Check out [OpenAPI-Spec](https://github.com/OAI/OpenAPI-Specification) for additional information about the Swagger project, including additional libraries with support for other languages and more. 

## Usage

### To build the generator
Clone this repository and then run:
```
build.cmd
```
or
```
mvn clean package
```
This will generate the codge generator
```
target/CSharpRefitCodegen-swagger-codegen-1.0.0.jar
```

### To run the generator
#### From the repository
First build the generator, see above.
Then download the [Swagger Codegen Cli](http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/2.2.3/swagger-codegen-cli-2.2.3.jar) into the.\tools folder.
Then run:
```
gen_client.cmd -i {url_or_path_to_swagger_json} -o clients/{client_name}
```
or
```
java -cp target/CSharpRefitCodegen-swagger-codegen-1.0.0.jar;tools/swagger-codegen-cli-2.2.3.jar io.swagger.codegen.SwaggerCodegen generate -l csharprefit  -i {url_or_path_to_swagger_json} -o clients/{client_name}
```
#### From artifact
Download the latest [jar](https://bitbucket.org/mminns-itofinity/swagger-csharp-refit/downloads/)

 
.\gen_client_bitbucket20.cmd gives an example of a more feature rich call.

## How was this built?
The starting point was the existing CSharp generator code in swagger, this was extracted and applied over the top of a custom generator started using the [Making your own codegen modules](https://github.com/swagger-api/swagger-codegen#making-your-own-codegen-modules) process.

It was tested against the Bitbucket [swagger.json](https://api.bitbucket.org/swagger.json)
