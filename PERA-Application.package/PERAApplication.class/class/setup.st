configuration
setup
	| teapot serializer |
	teapot := self configureTeapot.
	serializer := PERAJsonSerializer new.
	self jsonSerializer: serializer.
	self teapot: teapot.
	"ATSRFMethodScanner initialize.
	self setupRestOn: teapot forCommandsWithSerializer: serializer.
	"
	self setupHealthCheckRestOn: teapot withSerializer: serializer.
	self setupErrorHandlingOn: teapot withSerializer: serializer.
	^ self