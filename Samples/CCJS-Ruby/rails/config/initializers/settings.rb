SPEAKERS_METADATA = '{
  "metadataVersion": "1.0.5",
  "namingConvention": "rubyNamingConvention",
  "localQueryComparisonOptions": "caseInsensitiveSQL",
  "dataServices": [
    {
      "serviceName": "breeze\/Breeze\/",
      "hasServerMetadata": true,
      "jsonResultsAdapter": "webApi_default",
      "useJsonp": false
    }
  ],
  "structuralTypes": [
    {
      "shortName": "Session",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "Identity",
      "defaultResourceName": "Sessions",
      "dataProperties": [
        {
          "name": "id",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "title",
          "dataType": "String",
          "isNullable": false,
          "defaultValue": "",
          "maxLength": 50,
          "validators": [
            {
              "name": "required"
            },
            {
              "maxLength": 50,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "code",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "speakerId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "trackId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "timeSlotId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "roomId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "level",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "tags",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "description",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        }
      ],
      "navigationProperties": [
        {
          "name": "speaker",
          "entityTypeName": "Person:#CodeCamper",
          "isScalar": true,
          "associationName": "Session_Speaker",
          "foreignKeyNames": [
            "speakerId"
          ]
        },
        {
          "name": "track",
          "entityTypeName": "Track:#CodeCamper",
          "isScalar": true,
          "associationName": "Session_Track",
          "foreignKeyNames": [
            "trackId"
          ]
        },
        {
          "name": "timeSlot",
          "entityTypeName": "TimeSlot:#CodeCamper",
          "isScalar": true,
          "associationName": "Session_TimeSlot",
          "foreignKeyNames": [
            "timeSlotId"
          ]
        },
        {
          "name": "room",
          "entityTypeName": "Room:#CodeCamper",
          "isScalar": true,
          "associationName": "Session_Room",
          "foreignKeyNames": [
            "roomId"
          ]
        },
        {
          "name": "attendanceList",
          "entityTypeName": "Attendance:#CodeCamper",
          "isScalar": false,
          "associationName": "Attendance_Session",
          "invForeignKeyNames": [
            "id"
          ]
        }
      ]
    },
    {
      "shortName": "Person",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "Identity",
      "defaultResourceName": "Persons",
      "dataProperties": [
        {
          "name": "id",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "firstName",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "lastName",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "email",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "blog",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "twitter",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "gender",
          "dataType": "String",
          "maxLength": 1,
          "validators": [
            {
              "maxLength": 1,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "imageSource",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        },
        {
          "name": "bio",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        }
      ],
      "navigationProperties": [
        {
          "name": "speakerSessions",
          "entityTypeName": "Session:#CodeCamper",
          "isScalar": false,
          "associationName": "Session_Speaker",
          "invForeignKeyNames": [
            "id"
          ]
        },
        {
          "name": "attendanceList",
          "entityTypeName": "Attendance:#CodeCamper",
          "isScalar": false,
          "associationName": "Attendance_Person",
          "invForeignKeyNames": [
            "id"
          ]
        }
      ]
    },
    {
      "shortName": "Attendance",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "None",
      "defaultResourceName": "Attendance",
      "dataProperties": [
        {
          "name": "sessionId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "personId",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "rating",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "text",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        }
      ],
      "navigationProperties": [
        {
          "name": "person",
          "entityTypeName": "Person:#CodeCamper",
          "isScalar": true,
          "associationName": "Attendance_Person",
          "foreignKeyNames": [
            "personId"
          ]
        },
        {
          "name": "session",
          "entityTypeName": "Session:#CodeCamper",
          "isScalar": true,
          "associationName": "Attendance_Session",
          "foreignKeyNames": [
            "sessionId"
          ]
        }
      ]
    },
    {
      "shortName": "Track",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "Identity",
      "defaultResourceName": "Tracks",
      "dataProperties": [
        {
          "name": "id",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "name",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        }
      ]
    },
    {
      "shortName": "TimeSlot",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "Identity",
      "defaultResourceName": "TimeSlots",
      "dataProperties": [
        {
          "name": "id",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "start",
          "dataType": "DateTime",
          "isNullable": false,
          "defaultValue": "1900-01-01T08:00:00.000Z",
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "date"
            }
          ]
        },
        {
          "name": "isSessionSlot",
          "dataType": "Boolean",
          "isNullable": false,
          "defaultValue": false,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "bool"
            }
          ]
        },
        {
          "name": "duration",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        }
      ]
    },
    {
      "shortName": "Room",
      "namespace": "CodeCamper",
      "autoGeneratedKeyType": "Identity",
      "defaultResourceName": "Rooms",
      "dataProperties": [
        {
          "name": "id",
          "dataType": "Int32",
          "isNullable": false,
          "defaultValue": 0,
          "isPartOfKey": true,
          "validators": [
            {
              "name": "required"
            },
            {
              "name": "int32"
            }
          ]
        },
        {
          "name": "name",
          "dataType": "String",
          "maxLength": 4000,
          "validators": [
            {
              "maxLength": 4000,
              "name": "maxLength"
            }
          ]
        }
      ]
    }
  ],
  "resourceEntityTypeMap": {
    "Sessions": "Session:#CodeCamper",
    "Persons": "Person:#CodeCamper",
    "Attendance": "Attendance:#CodeCamper",
    "Tracks": "Track:#CodeCamper",
    "TimeSlots": "TimeSlot:#CodeCamper",
    "Rooms": "Room:#CodeCamper"
  }
}'
