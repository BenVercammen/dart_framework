module firebase_auth_admin

replace github.com/squarealfa/dart_framework/firebase-auth-admin/go/dart_api_dl => ./dart_api_dl

go 1.16

require (
	cloud.google.com/go/firestore v1.5.0 // indirect
	firebase.google.com/go v3.13.0+incompatible
	github.com/squarealfa/dart_framework/firebase-auth-admin/go/dart_api_dl v0.0.0-00010101000000-000000000000
	golang.org/x/net v0.0.0-20210924151903-3ad01bbaa167
	google.golang.org/api v0.57.0
)
