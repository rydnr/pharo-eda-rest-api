configuration
configureTeapot
	^ Teapot
		configure:
			{(#defaultOutput -> #json).
			(#port -> (self restPort)).
			(#debugMode -> true)}