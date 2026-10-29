{{- define "dependencytrack.db.secretName" }}
{{- if .Values.database.existingSecret.nameOverride }}
{{- .Values.database.existingSecret.nameOverride }}
{{- else }}
{{- printf "%s-db" (include "dependencytrack.fullname" .) }}
{{- end }}
{{- end }}

{{- define "dependencytrack.secretManagement.database.kekSecretName" }}
{{- if .Values.secretManagement.database.kek.existingSecret.nameOverride }}
{{- .Values.secretManagement.database.kek.existingSecret.nameOverride }}
{{- else }}
{{- printf "%s-kek" (include "dependencytrack.fullname" .) }}
{{- end }}
{{- end }}

{{- define "dependencytrack.s3.secretName" }}
{{- if .Values.fileStorage.s3.credentials.existingSecret.nameOverride }}
{{- .Values.fileStorage.s3.credentials.existingSecret.nameOverride }}
{{- else }}
{{- printf "%s-s3" (include "dependencytrack.fullname" .) }}
{{- end }}
{{- end }}
