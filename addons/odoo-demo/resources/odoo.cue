output: {
	type: "webservice2"
	properties: {
		image: "harbor.dev.wh.digitalchina.com/kubevela/odoo14:V1.2"

		imagePullPolicy: "IfNotPresent"

		exposeType: "NodePort"

		env: [
			{
				name: "DATABASE_HOST"
        value: "postgres"
			},
			{
				name: "DATABASE_PORT"
        value: "31234"
			},
			{
				name: "DATABASE_USER"
        value: "odoo"
			},
			{
				name: "DATABASE_USER_PASSWROD"
        value: "dc123456"
			},
			{
				name: "DATABASE_DB"
        value: "postgres"
			}
		]

		cpu: "0.5"

    memory: "1024"

		ports: [
			{
				port:     8069
				protocol: "TCP"
				expose:   true
				nodePort: 31157
			},
		]
	}
}