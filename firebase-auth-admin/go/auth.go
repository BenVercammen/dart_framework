package main

//#include <stdlib.h>
import "C"

import (
	firebase "firebase.google.com/go"
	"golang.org/x/net/context"
	"google.golang.org/api/option"

	"encoding/json"

	"unsafe"

	"firebase.google.com/go/auth"
)

var client *auth.Client

const initError = "please call initialize before any other authorization method"

//export initialize
func initialize(credentialsFile *C.char) *C.char {
	gCredentialsFile := C.GoString(credentialsFile)

	opt := option.WithCredentialsFile(gCredentialsFile)
	ctx := context.Background()
	var app, err = firebase.NewApp(ctx, nil, opt)
	if err != nil {
		C.CString(err.Error())
	}

	cli, err := app.Auth(ctx)
	if err != nil {
		return C.CString(err.Error())
	}

	client = cli

	return nil
}

//export freeMem
func freeMem(pointer *C.char) {
	C.free(unsafe.Pointer(pointer))
}

//export verifyToken
func verifyToken(idToken *C.char, token **C.char) *C.char {
	gIdToken := C.GoString(idToken)

	ctx := context.Background()
	sToken, err := client.VerifyIDToken(ctx, gIdToken)

	if err != nil {
		return C.CString(err.Error())
	}

	var jToken []byte
	jToken, err = json.Marshal(sToken)

	if err != nil {
		return C.CString(err.Error())
	}

	gToken := string(jToken)
	*token = C.CString(gToken)

	return nil
}

//export verifyIDTokenAndCheckRevoked
func verifyIDTokenAndCheckRevoked(idToken *C.char, token **C.char) *C.char {
	gIdToken := C.GoString(idToken)

	ctx := context.Background()
	sToken, err := client.VerifyIDTokenAndCheckRevoked(ctx, gIdToken)

	if err != nil {
		return C.CString(err.Error())
	}

	var jToken []byte
	jToken, err = json.Marshal(sToken)

	if err != nil {
		return C.CString(err.Error())
	}

	gToken := string(jToken)
	*token = C.CString(gToken)

	return nil
}

//export revokeRefreshTokens
func revokeRefreshTokens(idToken *C.char) *C.char {
	gIdToken := C.GoString(idToken)

	ctx := context.Background()
	err := client.RevokeRefreshTokens(ctx, gIdToken)

	if err != nil {
		return C.CString(err.Error())
	}

	return nil
}

//export setCustomUserClaims
func setCustomUserClaims(uid *C.char, claims *C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gClaims := C.GoString(claims)
	gUid := C.GoString(uid)

	var claimsMap map[string]interface{}
	bClaims := []byte(gClaims)
	json.Unmarshal(bClaims, &claimsMap)

	ctx := context.Background()
	err := client.SetCustomUserClaims(ctx, gUid, claimsMap)
	if err != nil {
		return C.CString(err.Error())
	}
	return nil
}

//export createUser
func createUser(userJson *C.char, uid **C.char) *C.char {
	*uid = nil

	if client == nil {
		return C.CString(initError)
	}

	gUserJson := []byte(C.GoString(userJson))

	var userMap map[string]interface{}
	json.Unmarshal(gUserJson, &userMap)

	params := (&auth.UserToCreate{})

	if userMap["email"] != nil {
		params.Email(userMap["email"].(string))
	}
	if userMap["emailVerified"] != nil {
		params.EmailVerified(userMap["emailVerified"].(bool))
	}
	if userMap["disabled"] != nil {
		params.Disabled(userMap["disabled"].(bool))
	}
	if userMap["displayName"] != nil {
		params.DisplayName(userMap["displayName"].(string))
	}
	if userMap["password"] != nil {
		params.Password(userMap["password"].(string))
	}
	if userMap["phoneNumber"] != nil {
		params.PhoneNumber(userMap["phoneNumber"].(string))
	}
	if userMap["photoUrl"] != nil {
		params.PhotoURL(userMap["photoUrl"].(string))
	}
	if userMap["uid"] != nil {
		params.UID(userMap["uid"].(string))
	}

	ctx := context.Background()

	u, err := client.CreateUser(ctx, params)
	if err != nil {
		return C.CString(err.Error())
	}

	*uid = C.CString(u.UID)

	return nil
}

//export updateUser
func updateUser(userJson *C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gUserJson := []byte(C.GoString(userJson))

	var userMap map[string]interface{}
	json.Unmarshal(gUserJson, &userMap)
	gUid := userMap["uid"].(string)

	params := (&auth.UserToUpdate{})

	if userMap["email"] != nil {
		params.Email(userMap["email"].(string))
	}
	if userMap["emailVerified"] != nil {
		params.EmailVerified(userMap["emailVerified"].(bool))
	}
	if userMap["disabled"] != nil {
		params.Disabled(userMap["disabled"].(bool))
	}
	if userMap["displayName"] != nil {
		params.DisplayName(userMap["displayName"].(string))
	}
	if userMap["password"] != nil {
		params.Password(userMap["password"].(string))
	}
	if userMap["phoneNumber"] != nil {
		params.PhoneNumber(userMap["phoneNumber"].(string))
	}
	if userMap["photoUrl"] != nil {
		params.PhotoURL(userMap["photoUrl"].(string))
	}

	ctx := context.Background()

	_, err := client.UpdateUser(ctx, gUid, params)
	if err != nil {
		return C.CString(err.Error())
	}

	return nil
}

//export deleteUser
func deleteUser(uid *C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gUid := C.GoString(uid)

	ctx := context.Background()

	err := client.DeleteUser(ctx, gUid)
	if err != nil {
		return C.CString(err.Error())
	}

	return nil
}

//export getCustomClaims
func getCustomClaims(uid *C.char, claims **C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gUid := C.GoString(uid)

	ctx := context.Background()

	usr, err := client.GetUser(ctx, gUid)
	if err != nil {
		return C.CString(err.Error())
	}

	cclaims := usr.CustomClaims
	bytes, err := json.Marshal(cclaims)
	if err != nil {
		return C.CString(err.Error())
	}

	jsonClaims := string(bytes)

	*claims = C.CString(jsonClaims)

	return nil
}

//export createCustomTokenWithClaims
func createCustomTokenWithClaims(uid *C.char, claims *C.char, token **C.char) *C.char {
	*token = nil

	if client == nil {
		return C.CString(initError)
	}

	gUid := C.GoString(uid)
	gClaims := C.GoString(claims)

	var claimsMap map[string]interface{}
	bClaims := []byte(gClaims)
	json.Unmarshal(bClaims, &claimsMap)

	ctx := context.Background()
	idToken, err := client.CustomTokenWithClaims(ctx, gUid, claimsMap)

	if err != nil {
		return C.CString(err.Error())
	}

	*token = C.CString(idToken)
	return nil
}

//export createCustomToken
func createCustomToken(uid *C.char, token **C.char) *C.char {
	*token = nil

	if client == nil {
		return C.CString(initError)
	}

	gUid := C.GoString(uid)

	ctx := context.Background()
	idToken, err := client.CustomToken(ctx, gUid)

	if err != nil {
		return C.CString(err.Error())
	}

	*token = C.CString(idToken)
	return nil
}

//export getUser
func getUser(uid *C.char, user **C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gUid := C.GoString(uid)

	ctx := context.Background()

	usr, err := client.GetUser(ctx, gUid)
	if err != nil {
		return C.CString(err.Error())
	}

	bytes, err := json.Marshal(usr)
	if err != nil {
		return C.CString(err.Error())
	}

	jsonUser := string(bytes)

	*user = C.CString(jsonUser)

	return nil
}

//export getUserByEmail
func getUserByEmail(email *C.char, user **C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gEmail := C.GoString(email)
	ctx := context.Background()

	usr, err := client.GetUserByEmail(ctx, gEmail)
	if err != nil {
		return C.CString(err.Error())
	}

	bytes, err := json.Marshal(usr)
	if err != nil {
		return C.CString(err.Error())
	}

	jsonUser := string(bytes)

	*user = C.CString(jsonUser)

	return nil
}

//export getUserByPhoneNumber
func getUserByPhoneNumber(phoneNumber *C.char, user **C.char) *C.char {
	if client == nil {
		return C.CString(initError)
	}

	gPhoneNumber := C.GoString(phoneNumber)

	ctx := context.Background()

	usr, err := client.GetUserByPhoneNumber(ctx, gPhoneNumber)
	if err != nil {
		return C.CString(err.Error())
	}

	bytes, err := json.Marshal(usr)
	if err != nil {
		return C.CString(err.Error())
	}

	jsonUser := string(bytes)

	*user = C.CString(jsonUser)

	return nil
}

func main() {
}
