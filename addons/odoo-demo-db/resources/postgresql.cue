output: {
	type: "helm"
	properties: {
		repoType: "helm"
		url:      "https://charts.bitnami.com/bitnami"
		chart:    "postgresql"
		version:  "11.7.1"
		values: {
			auth: {
				postgresPassword: "dc123456"
				username: "odoo"
      	password: "dc123456"
			}
			primary: service: {
				type: "NodePort"
				nodePorts: postgresql: "31233"
			}
		}
	}
}