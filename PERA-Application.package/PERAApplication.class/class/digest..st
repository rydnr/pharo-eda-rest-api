configuration
digest: aString
  ^ ZnBase64Encoder new encode: (SHA256 hashStream: (ReadStream on: aString))