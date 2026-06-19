Skip to content

Jenkins
Manage Jenkins
Search
Manage Jenkins
Jenkins Admin
Manage Jenkins
Search settings
Correct
Some plugins could not be loaded due to unsatisfied dependencies. Fix these issues and restart Jenkins to re-enable these plugins.

Dependency errors:

Credentials Plugin (1487.va_d001ede2c31)
Plugin is missing: bouncycastle-api (2.30.1.82-277.v70ca_0b_877184)
Instance Identity (203.v15e81a_1b_7a_38)
Plugin is missing: bouncycastle-api (2.30.1.80-256.vf98926042a_9b_)
GitHub Branch Source Plugin (1917.v9ee8a_39b_3d0d)
Plugin is missing: github (1.45.0)
Git plugin (5.10.1)
Plugin is missing: workflow-scm-step (466.va_d69e602552b_)
SSH Credentials Plugin (372.va_250881b_08cd)
Plugin is missing: bouncycastle-api (2.30.1.79-254.vfdb_814e7791e)
Pipeline: Basic Steps (1098.v808b_fd7f8cf4)
Plugin is missing: jakarta-mail-api (2.1.3-3)
ECharts API Plugin (6.0.0-1146.v5c8f3b_8f0573)
Plugin is missing: jquery3-api (3.7.1-3)
AWS Credentials Plugin (262.v0efb_28f71f94)
Plugin is missing: aws-java-sdk2-ec2 (2.31.63-54.vcf1e5a_c56c49)
Pipeline: Groovy (4303.v8fa_2a_581f0a_6)
Plugin is missing: workflow-scm-step (437.v05a_f66b_e5ef8)
Jenkins Mailer Plugin (534.v1b_36f5864073)
Plugin is missing: jakarta-mail-api (2.1.3-2)
Jenkins Workspace Cleanup Plugin (0.49)
Plugin is missing: matrix-project (849.v0cd64ed7e531)
Plugin is missing: resource-disposer (0.25)
Docker API Plugin (3.7.1-136.v5d70f77a_c3d6)
Plugin is missing: commons-compress-api (1.26.1-2)
Plugin is missing: bouncycastle-api (2.30.1.80-261.v00c0e2618ec3)
Some of the above failures also result in additional indirectly dependent plugins not being able to load.

Indirectly dependent plugins:

Credentials Binding Plugin (725.ve52b_2328a_fde)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Kubernetes Credentials Plugin (207.v492f58828b_ed)
Failed to load: Authentication Tokens API Plugin (authentication-tokens 1.144.v5ff4a_5ec5c33)
Kubernetes CLI Plugin (1.375.v8001982544ba)
Failed to load: Authentication Tokens API Plugin (authentication-tokens 1.144.v5ff4a_5ec5c33)
Pipeline (608.v67378e9d3db_1)
Failed to load: Pipeline: Groovy Libraries (pipeline-groovy-lib 798.v5cc688825312)
Amazon ECR plugin (1.161.v1a_1e8df852d6)
Failed to load: AWS Credentials Plugin (aws-credentials 262.v0efb_28f71f94)
GitHub Branch Source Plugin (1917.v9ee8a_39b_3d0d)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Pipeline: GitHub Groovy Libraries (65.v203688e7727e)
Failed to load: Pipeline: Groovy Libraries (pipeline-groovy-lib 798.v5cc688825312)
Plain Credentials Plugin (199.v9f8e1f741799)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Pipeline: Multibranch (821.vc3b_4ea_780798)
Failed to load: Pipeline: Groovy (workflow-cps 4303.v8fa_2a_581f0a_6)
Git plugin (5.10.1)
Failed to load: Credentials Binding Plugin (credentials-binding 725.ve52b_2328a_fde)
Authentication Tokens API Plugin (1.144.v5ff4a_5ec5c33)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
LDAP Plugin (807.809.vd3a_4e5e4ec98)
Failed to load: Jenkins Mailer Plugin (mailer 534.v1b_36f5864073)
SSH Credentials Plugin (372.va_250881b_08cd)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Pipeline Graph View Plugin (661.v6003f4542123)
Failed to load: Pipeline: Groovy (workflow-cps 4303.v8fa_2a_581f0a_6)
Docker plugin (1316.v75635a_002b_0a_)
Failed to load: Instance Identity (instance-identity 203.v15e81a_1b_7a_38)
Pipeline: Basic Steps (1098.v808b_fd7f8cf4)
Failed to load: Jenkins Mailer Plugin (mailer 534.v1b_36f5864073)
Pipeline: Declarative Extension Points API (2.2291.v2934911987b_6)
Failed to load: Pipeline: Groovy (workflow-cps 4303.v8fa_2a_581f0a_6)
JUnit Plugin (1369.v15da_00283f06)
Failed to load: ECharts API Plugin (echarts-api 6.0.0-1146.v5c8f3b_8f0573)
Pipeline: Groovy Libraries (798.v5cc688825312)
Failed to load: Pipeline: Groovy (workflow-cps 4303.v8fa_2a_581f0a_6)
AWS Credentials Plugin (262.v0efb_28f71f94)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
SSH Build Agents plugin (3.1097.v868116049892)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Mailer Plugin (534.v1b_36f5864073)
Failed to load: Instance Identity (instance-identity 203.v15e81a_1b_7a_38)
Gradle Plugin (2.18.1203.v2c96b_1243c72)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
Pipeline: Input Step (551.vdff487c5998c)
Failed to load: Credentials Plugin (credentials 1487.va_d001ede2c31)
New version of Jenkins (2.555.3) is available for download (changelog).
Dismiss
Jenkins took some agents offline because their key health metrics went below a threshold. If you don’t want Jenkins to do this, change the setting.
Set up agent
Set up cloud
Dismiss
Building on the built-in node can be a security issue. You should set up distributed builds. See the documentation.
More Info
Ignore
Java 17 end of life in Jenkins
You are running Jenkins on Java 17, support for which will end on or after Mar 31, 2026. Refer to the documentation for more details.
Configure which of these warnings are shown
Warnings have been published for the following currently installed components:
Jenkins 2.516.1 core and libraries
Multiple security vulnerabilities in Jenkins 2.550 and earlier, LTS 2.541.1 and earlier
Multiple security vulnerabilities in Jenkins 2.540 and earlier, LTS 2.528.2 and earlier
Multiple security vulnerabilities in Jenkins 2.527 and earlier, LTS 2.516.2 and earlier
Multiple security vulnerabilities in Jenkins 2.567 and earlier, LTS 2.555.2 and earlier
Multiple security vulnerabilities in Jenkins 2.554 and earlier, LTS 2.541.2 and earlier
Fixes for all of these issues are available. Update Jenkins now.
System Configuration
System
Configure global settings and paths.
Tools
Configure tools, their locations and automatic installers.
Plugins
Add, remove, disable or enable plugins that can extend the functionality of Jenkins.
Nodes
Add, remove, control and monitor the various nodes that Jenkins runs jobs on.
Clouds
Add, remove, and configure cloud instances to provision agents on-demand.
Appearance
Configure the look and feel of Jenkins
Security
Security
Secure Jenkins; define who is allowed to access/use the system.
Users
Create/delete/modify users that can log in to this Jenkins.
Status Information
System Information
Displays various environmental information to assist trouble-shooting.
System Log
System log captures output from java.util.logging output related to Jenkins.
Load Statistics
Check your resource utilization and see if you need more computers for your builds.
About Jenkins
See the version and license information.
Troubleshooting
Manage Old Data
Scrub configuration files to remove remnants from old plugins and earlier versions.
Tools and Actions
Reload Configuration from Disk
Discard all the loaded data in memory and reload everything from file system. Useful when you modified config files directly on disk.
Jenkins CLI
Access/manage Jenkins from your shell, or from your script.
Script Console
Executes arbitrary script for administration/trouble-shooting/diagnostics.
Prepare for Shutdown
Stops executing new builds, so that the system can be eventually shut down safely.
Jenkins 2.516.1
