{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "catch_error_mini",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "catch_error_mini.dll",
            "final": "",
            "functions": [
                {
                    "id": "a5b5a8ee-b3bd-68a7-4268-ad19285300d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "catch_error_is_available",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "catch_error_is_available",
                    "returnType": 2
                },
                {
                    "id": "2e2546bd-40ed-2563-6aba-efce59ee7d79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "catch_error_preinit_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "catch_error_preinit_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\catch_error_mini.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "0e5a5283-07d9-c4bc-1ea9-97311e2caedc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "error_occurred",
                    "hidden": false,
                    "value": "global.g_error_occurred"
                },
                {
                    "id": "80e7e1ed-1ae0-d092-6b9b-5b19c4f1cb84",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "error_last",
                    "hidden": false,
                    "value": "global.g_error_last"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "catch_error_mini.gml",
            "final": "",
            "functions": [
                {
                    "id": "68019abb-f010-bc3b-eae1-c39fffb295a6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "catch_error_preinit",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "catch_error_preinit",
                    "returnType": 2
                }
            ],
            "init": "catch_error_preinit",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "962d9a80-fb98-4072-93ea-c79e5ae6f0f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "autogen.gml",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\autogen.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}