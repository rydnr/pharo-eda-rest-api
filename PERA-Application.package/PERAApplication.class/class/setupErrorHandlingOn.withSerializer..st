configuration
setupErrorHandlingOn: aTeapot withSerializer: aSerializer
	aTeapot
		exception: KeyNotFound -> [ :ex :req | TeaResponse notFound ];
		exception:
			Error
				-> [ :ex :req |
					Transcript
						print: 'ERROR processing request ';
						print: req url;
						print: '.';
						cr.
					req entity
						ifNotNil: [ :v |
							Transcript
								print: v string;
								cr ].
					Transcript
						print: ex greaseString;
						cr.
					TeaResponse badRequest ]