./setup.sh 
===== JOBS =====
total 8
drwxr-xr-x  2 jenkins jenkins 4096 Jun 17 16:50 .
drwxr-xr-x 11 jenkins jenkins 4096 Jun 17 16:53 ..

===== SECRETS =====
total 28
drwx------  2 jenkins jenkins 4096 Jun 17 16:50 .
drwxr-xr-x 11 jenkins jenkins 4096 Jun 17 16:53 ..
-rw-r--r--  1 jenkins jenkins   48 Jun 17 16:50 hudson.model.User.DIRNAMES
-rw-r-----  1 jenkins jenkins   33 Jun 17 16:50 initialAdminPassword
-rw-r--r--  1 jenkins jenkins   32 Jun 17 16:50 jenkins.model.Jenkins.crumbSalt
-rw-r--r--  1 jenkins jenkins   48 Jun 17 16:50 jenkins.security.csp.ReportingContext.key
-rw-r--r--  1 jenkins jenkins  256 Jun 17 16:50 master.key

===== USERS =====
total 12
drwxr-xr-x  3 jenkins jenkins 4096 Jun 17 16:50 .
drwxr-xr-x 11 jenkins jenkins 4096 Jun 17 16:53 ..
drwxr-xr-x  2 jenkins jenkins 4096 Jun 17 16:50 admin_2b042c1730c4456b84994fd790c77decb7eb4c36ed3c678c5d665775fdf2ca81

===== RESTARTING JENKINS =====
jenkins

Waiting 30 seconds...

===== LAST 100 LOG LINES =====
Running from: /usr/share/jenkins/jenkins.war
webroot: /var/jenkins_home/war
2026-06-17 16:52:53.751+0000 [id=1]     INFO    winstone.Logger#logInternal: Beginning extraction from war file
2026-06-17 16:52:53.879+0000 [id=1]     WARNING o.e.j.ee9.nested.ContextHandler#setContextPath: Empty contextPath
2026-06-17 16:52:53.998+0000 [id=1]     INFO    org.eclipse.jetty.server.Server#doStart: jetty-12.1.8; built: 2026-04-01T01:09:18.991Z; git: c9cdc9aaa434a3665b8a53b4d1cc3684992da649; jvm 21.0.11+10-LTS
2026-06-17 16:52:54.827+0000 [id=1]     INFO    o.e.j.e.w.StandardDescriptorProcessor#visitServlet: NO JSP Support for /, did not find org.eclipse.jetty.ee9.jsp.JettyJspServlet
2026-06-17 16:52:54.895+0000 [id=1]     INFO    o.e.j.s.DefaultSessionIdManager#doStart: Session workerName=node0
2026-06-17 16:52:55.662+0000 [id=1]     INFO    hudson.WebAppMain#contextInitialized: Jenkins home directory: /var/jenkins_home found at: EnvVars.masterEnvVars.get("JENKINS_HOME")
2026-06-17 16:52:55.831+0000 [id=1]     INFO    o.e.j.s.handler.ContextHandler#doStart: Started oeje9n.ContextHandler$CoreContextHandler@7df60067{Jenkins v2.555.3,/,b=file:///var/jenkins_home/war/,a=AVAILABLE,h=oeje9n.ContextHandler$CoreContextHandler$CoreToNestedHandler@1cbb3d3b{STARTED}}
2026-06-17 16:52:55.855+0000 [id=1]     INFO    o.e.j.server.AbstractConnector#doStart: Started oejs.ServerConnector@c18ed87{HTTP/1.1, (http/1.1)}{0.0.0.0:8080}
2026-06-17 16:52:55.858+0000 [id=1]     INFO    org.eclipse.jetty.server.Server#doStart: Started oejs.Server@476ec9d0{STARTING}[12.1.8,sto=0] @1862ms
2026-06-17 16:52:55.861+0000 [id=31]    INFO    winstone.Logger#logInternal: Winstone Servlet Engine running: controlPort=disabled
2026-06-17 16:52:56.008+0000 [id=30]    INFO    jenkins.model.Jenkins#<init>: Starting version 2.555.3
2026-06-17 16:52:56.137+0000 [id=38]    INFO    jenkins.InitReactorRunner$1#onAttained: Started initialization
2026-06-17 16:52:56.223+0000 [id=36]    INFO    jenkins.InitReactorRunner$1#onAttained: Listed all plugins
2026-06-17 16:52:57.461+0000 [id=38]    INFO    jenkins.InitReactorRunner$1#onAttained: Prepared all plugins
2026-06-17 16:52:57.468+0000 [id=39]    INFO    jenkins.InitReactorRunner$1#onAttained: Started all plugins
2026-06-17 16:52:57.470+0000 [id=36]    INFO    jenkins.InitReactorRunner$1#onAttained: Augmented all extensions
2026-06-17 16:52:57.957+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: System config loaded
2026-06-17 16:52:57.958+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: System config adapted
2026-06-17 16:52:57.960+0000 [id=36]    INFO    jenkins.InitReactorRunner$1#onAttained: Loaded all jobs
2026-06-17 16:52:57.962+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: Configuration for all jobs updated
2026-06-17 16:52:58.077+0000 [id=39]    INFO    jenkins.install.SetupWizard#init: 
[LF]> 
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> 
[LF]> Jenkins initial setup is required. An admin user has been created and a password generated.
[LF]> Please use the following password to proceed to installation:
[LF]> 
[LF]> 1dbc16692eee4e8a83c08e04c9be053f
[LF]> 
[LF]> This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
[LF]> 
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> *************************************************************

2026-06-17 16:53:02.758+0000 [id=39]    INFO    jenkins.InitReactorRunner$1#onAttained: Completed initialization
2026-06-17 16:53:02.863+0000 [id=30]    INFO    hudson.lifecycle.Lifecycle#onReady: Jenkins is fully up and running
2026-06-17 16:56:13.942+0000 [id=32]    INFO    winstone.Logger#logInternal: JVM is terminating. Shutting down Jetty
2026-06-17 16:56:13.944+0000 [id=32]    INFO    org.eclipse.jetty.server.Server#doStop: Stopped oejs.Server@476ec9d0{STOPPING}[12.1.8,sto=0]
2026-06-17 16:56:13.946+0000 [id=32]    INFO    o.e.j.server.AbstractConnector#doStop: Stopped oejs.ServerConnector@c18ed87{HTTP/1.1, (http/1.1)}{0.0.0.0:8080}
2026-06-17 16:56:13.951+0000 [id=32]    INFO    hudson.lifecycle.Lifecycle#onStatusUpdate: Stopping Jenkins
2026-06-17 16:56:13.956+0000 [id=32]    INFO    jenkins.model.Jenkins$13#onAttained: Started termination
2026-06-17 16:56:13.970+0000 [id=32]    INFO    jenkins.model.Jenkins$13#onAttained: Completed termination
2026-06-17 16:56:13.971+0000 [id=32]    INFO    jenkins.model.Jenkins#_cleanUpDisconnectComputers: Starting node disconnection
2026-06-17 16:56:13.984+0000 [id=32]    INFO    jenkins.model.Jenkins#_cleanUpShutdownPluginManager: Stopping plugin manager
2026-06-17 16:56:13.984+0000 [id=32]    INFO    jenkins.model.Jenkins#_cleanUpPersistQueue: Persisting build queue
2026-06-17 16:56:13.992+0000 [id=32]    INFO    jenkins.model.Jenkins#_cleanUpAwaitDisconnects: Waiting for node disconnection completion
2026-06-17 16:56:13.993+0000 [id=32]    INFO    hudson.lifecycle.Lifecycle#onStatusUpdate: Jenkins stopped
Running from: /usr/share/jenkins/jenkins.war
webroot: /var/jenkins_home/war
2026-06-17 16:56:15.319+0000 [id=1]     INFO    winstone.Logger#logInternal: Beginning extraction from war file
2026-06-17 16:56:15.446+0000 [id=1]     WARNING o.e.j.ee9.nested.ContextHandler#setContextPath: Empty contextPath
2026-06-17 16:56:15.559+0000 [id=1]     INFO    org.eclipse.jetty.server.Server#doStart: jetty-12.1.8; built: 2026-04-01T01:09:18.991Z; git: c9cdc9aaa434a3665b8a53b4d1cc3684992da649; jvm 21.0.11+10-LTS
2026-06-17 16:56:16.446+0000 [id=1]     INFO    o.e.j.e.w.StandardDescriptorProcessor#visitServlet: NO JSP Support for /, did not find org.eclipse.jetty.ee9.jsp.JettyJspServlet
2026-06-17 16:56:16.524+0000 [id=1]     INFO    o.e.j.s.DefaultSessionIdManager#doStart: Session workerName=node0
2026-06-17 16:56:17.295+0000 [id=1]     INFO    hudson.WebAppMain#contextInitialized: Jenkins home directory: /var/jenkins_home found at: EnvVars.masterEnvVars.get("JENKINS_HOME")
2026-06-17 16:56:17.454+0000 [id=1]     INFO    o.e.j.s.handler.ContextHandler#doStart: Started oeje9n.ContextHandler$CoreContextHandler@5b22b970{Jenkins v2.555.3,/,b=file:///var/jenkins_home/war/,a=AVAILABLE,h=oeje9n.ContextHandler$CoreContextHandler$CoreToNestedHandler@22d1886d{STARTED}}
2026-06-17 16:56:17.477+0000 [id=1]     INFO    o.e.j.server.AbstractConnector#doStart: Started oejs.ServerConnector@78c1a023{HTTP/1.1, (http/1.1)}{0.0.0.0:8080}
2026-06-17 16:56:17.482+0000 [id=1]     INFO    org.eclipse.jetty.server.Server#doStart: Started oejs.Server@6a10b263{STARTING}[12.1.8,sto=0] @1923ms
2026-06-17 16:56:17.483+0000 [id=31]    INFO    winstone.Logger#logInternal: Winstone Servlet Engine running: controlPort=disabled
2026-06-17 16:56:17.630+0000 [id=30]    INFO    jenkins.model.Jenkins#<init>: Starting version 2.555.3
2026-06-17 16:56:17.749+0000 [id=38]    INFO    jenkins.InitReactorRunner$1#onAttained: Started initialization
2026-06-17 16:56:17.810+0000 [id=39]    INFO    jenkins.InitReactorRunner$1#onAttained: Listed all plugins
2026-06-17 16:56:19.186+0000 [id=36]    INFO    jenkins.InitReactorRunner$1#onAttained: Prepared all plugins
2026-06-17 16:56:19.191+0000 [id=39]    INFO    jenkins.InitReactorRunner$1#onAttained: Started all plugins
2026-06-17 16:56:19.193+0000 [id=38]    INFO    jenkins.InitReactorRunner$1#onAttained: Augmented all extensions
2026-06-17 16:56:19.618+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: System config loaded
2026-06-17 16:56:19.619+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: System config adapted
2026-06-17 16:56:19.619+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: Loaded all jobs
2026-06-17 16:56:19.621+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: Configuration for all jobs updated
2026-06-17 16:56:19.718+0000 [id=37]    INFO    jenkins.install.SetupWizard#init: 
[LF]> 
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> 
[LF]> Jenkins initial setup is required. An admin user has been created and a password generated.
[LF]> Please use the following password to proceed to installation:
[LF]> 
[LF]> 1dbc16692eee4e8a83c08e04c9be053f
[LF]> 
[LF]> This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
[LF]> 
[LF]> *************************************************************
[LF]> *************************************************************
[LF]> *************************************************************

2026-06-17 16:56:23.617+0000 [id=37]    INFO    jenkins.InitReactorRunner$1#onAttained: Completed initialization
2026-06-17 16:56:23.717+0000 [id=30]    INFO    hudson.lifecycle.Lifecycle#onReady: Jenkins is fully up and running
2026-06-17 16:56:28.724+0000 [id=69]    WARNING h.n.DiskSpaceMonitorDescriptor#markNodeOfflineOrOnline: Making Built-In Node offline temporarily due to the lack of disk space
ubuntu@ip-172-31-39-221:~$ 
