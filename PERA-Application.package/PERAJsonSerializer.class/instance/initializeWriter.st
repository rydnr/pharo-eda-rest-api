initialization
initializeWriter
	self
		writer: [ :object | 
			String
				streamContents: [ :stream | 
					| jsonWriter |
					jsonWriter := NeoJSONWriter on: stream.
					jsonWriter
						prettyPrint: true;
						for: DateAndTime customDo: [ :mapping | mapping encoder: [ :dateAndTime | dateAndTime printString ] ].
					EDAAggregateRoot subclassesDo: [ :cls | jsonWriter mapAllInstVarsFor: cls ].
					"jsonWriter mapAllInstVarsFor: PERAApplicationDecorator."
					jsonWriter nextPut: object ] ]