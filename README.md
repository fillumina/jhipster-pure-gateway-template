# Pure Gateway

This is a normal gateway as produced by [JHipster](https://www.jhipster.tech) 7.3.1 with the following jdl definition but with all db dependencies removed:

```
application {
  config {
    baseName amzbridgegw
    applicationType gateway
    packageName com.fillumina.innova.amzbridgegw
    serviceDiscoveryType eureka
    authenticationType oauth2
    buildTool maven
    prodDatabaseType postgresql
    devDatabaseType postgresql    
    cacheProvider hazelcast
    clientFramework angularX
    reactive false
    clientPackageManager npm
    clientTheme flatly
    languages [en, it, fr, de, es]
    nativeLanguage en
  }
  entities *
}
```

JHipster uses a database by default on gateways even if no entities were defined to authenticate users and roles. But that's only required if the authentication must be provided by the gateway itself. In cases where authentication is provided externally (such as with OAth2, [Keycloak](https://www.keycloak.org/) or Okta) the database is no longer needed and can be removed together with a lot of related code to make the application leaner and faster.

This application have done exactly that and can be used as a skeleton to create other gateways.

The `/src/main/webapp` folder has been removed too to preserve the target webapp code.

To substitute default package and default application name just use the `run-rename-pkg-and-app.sh` script.

**REMEMBER TO REMOVE FROM DESTINATION**

* `src/main/java` 
* `src/main/docker`
* `src/main/resources`
* `test/main/java`
* `test/main/resources`

Copy to destination:
`rsync -a source destination`

**REMEMBER** to rename the main `*App.java` (I'm too lazy for this).