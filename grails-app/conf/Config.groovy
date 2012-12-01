// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [
    all:           '*/*',
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

environments {
    development {
        grails.logging.jul.usebridge = false
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// log4j configuration
// log4j configuration
  log4j = {
        appenders {
            rollingFile name: 'fileLog',
            file: 'logs/full.log',
            maxFileSize: 26214400,
            maxBackupIndex: 10,
            layout: pattern(conversionPattern: '%d{yyyy-MM-dd HH:mm:ss,SSS} %p %c{2} %m%n')
        }
        root {
             error()
             additivity = true
        }
        error  'org.codehaus.groovy.grails.web.servlet',  //  controllers
               'org.codehaus.groovy.grails.web.pages' //  GSP

    debug fileLog:'grails.app'

    warn 'org.mortbay.log'
}

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.password.algorithm='SHA-256'
grails.plugins.springsecurity.anon.userAttribute = 'sss, ROLE_ANONYMOUS'
// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'ar.com.goliath.User'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'ar.com.goliath.UserRole'
grails.plugins.springsecurity.authority.className = 'ar.com.goliath.Role'
grails.plugins.springsecurity.requestMap.className = 'ar.com.goliath.Requestmap'
grails.plugins.springsecurity.securityConfigType = grails.plugins.springsecurity.SecurityConfigType.Requestmap
//token
grails.plugins.springsecurity.rememberMe.persistent = true
grails.plugins.springsecurity.rememberMe.persistentToken.domainClassName = 'ar.com.goliath.PersistToken'
