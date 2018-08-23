baselines
baseline01: spec
	<version: '0.1-baseline'>
	spec
		for: #common
		do: [ spec
				project: 'Pharo-EDA'
				with: [ spec
						className: 'ConfigurationOfPharoEDA';
						repository: 'gitfiletree://' , FileSystem workingDirectory fullName , 'pharo-eda';
						versionString: #bleedingEdge ].
			spec
				blessing: #baseline;
				repository: 'gitfiletree://' , FileSystem workingDirectory fullName;
				project: 'Teapot'
					with: [ spec
						className: #ConfigurationOfTeapot;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main' ];
				project: 'Mustache'
					with: [ spec
						className: #ConfigurationOfMustache;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mustache/main' ];
				project: 'Zinc-Zodiac'
					with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: '2.8.10';
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main' ];
				project: 'Roassal2'
					with: [ spec
						className: 'ConfigurationOfRoassal2';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
			spec
				package: 'PERA-Domain';
				package: 'PERA-Settings';
				package: 'PERA-Domain-Tests' with: [ spec requires: #('PERA-Domain') ];
				package: 'PERA-Application' with: [ spec requires: #('PERA-Domain') ];
				package: 'PERA-Application-Tests' with: [ spec requires: #('PERA-Domain' 'PERA-Application') ].
			spec
				group: 'rest-api' with: #('PERA-Domain' 'PERA-Application' 'PERA-Settings');
				group: 'tests' with: #('PERA-Domain-Tests' 'PERA-Application-Tests');
				group: 'default' with: #('rest-api' 'tests') ]