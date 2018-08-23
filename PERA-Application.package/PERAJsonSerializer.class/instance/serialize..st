api
serialize: anObject
	| writerBlock |
	writerBlock := (anObject isKindOf: Error)
		ifTrue: [ self errorWriter ]
		ifFalse: [ self writer ].
	^ writerBlock value: anObject