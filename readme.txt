to install
1. run sqlcli on terminal / cmd
2. connect to NOS schema
 	- sample connect string: sql -thin NOS/<nos db password>@host:port/service
3. run install.sql (under app directory)

to export
1. run sqlcli on terminal / cmd
2. connect to NOS schema
 	- sample connect string: sql -thin NOS/<nos db password>@host:port/service
3. run: apex export -applicationid <app id> -split -skipExportDate -expOriginalIds -expSupportingObjects Y -expType APPLICATION_SOURCE,READABLE_YAML
