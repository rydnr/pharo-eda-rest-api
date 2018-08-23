configuration
setupHealthCheckRestOn: teapot withSerializer: aSerializer
	teapot GET: '/healthCheck' -> [ :req | ZnResponse ok: (ZnStringEntity text: 'ok') ]