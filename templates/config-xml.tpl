{{- define "prowlarr_config_xml_content" -}}
{{- $e := .Values.externalSecrets.configXml | default dict }}
<Config>
  <LogLevel>Info</LogLevel>
  <Port>9696</Port>
  <UrlBase></UrlBase>
  <BindAddress>*</BindAddress>
  <SslPort>9696</SslPort>
  <EnableSsl>False</EnableSsl>
  <ApiKey>__API_KEY__</ApiKey>
  <AuthenticationMethod>Basic</AuthenticationMethod>
  <Branch>nightly</Branch>
  <LaunchBrowser>False</LaunchBrowser>
  <UpdateMechanism>Docker</UpdateMechanism>
  <AnalyticsEnabled>False</AnalyticsEnabled>
  <UpdateAutomatically>True</UpdateAutomatically>
  <InstanceName>Prowlarr</InstanceName>
  <PostgresUser>{{ $e.postgresUser | default "postgres" }}</PostgresUser>
  <PostgresPassword>__POSTGRES_PASSWORD__</PostgresPassword>
  <PostgresPort>{{ $e.postgresPort | default "5432" }}</PostgresPort>
  <PostgresHost>{{ $e.postgresHost | default "postgresql-rw.postgresql.svc.cluster.local" }}</PostgresHost>
  <PostgresMainDb>{{ $e.postgresMainDb | default "prowlarr-main" }}</PostgresMainDb>
  <PostgresLogDb>{{ $e.postgresLogDb | default "prowlarr-log" }}</PostgresLogDb>
</Config>
{{- end -}}
