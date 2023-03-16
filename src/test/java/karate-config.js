function fn() {
	var env = karate.env; // to get java system property 'karate.env'
	karate.log('karate.env system property was:', env);
	if (!env) {
		env = 'dev'; // will be considered as default
	}
	var config = { // base config JSON
		appId: 'my.app.id',
		appSecret: 'my.secret',
		BaseURL : 'https://gorest.co.in/public/v2/users',
		anotherUrlBase: 'https://gorest.co.in/public/v2/users'
	};
	if (env == 'stage') {
		// over-ride only those that need to be
		config.someUrlBase = 'https://gorest.co.in/public/v2/users';
	} else if (env == 'e2e') {
		config.someUrlBase = 'https://gorest.co.in/public/v2/users';
	}
	// timeouts can be provided here globally
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);
	return config;
}