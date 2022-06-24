module.exports = {
	pages: {
		index: {
			entry: "src/main.js",
		},
	},
	lintOnSave: false,  // 关闭语法检查！！！！
	devServer: {
		proxy: {
			'/demo': {
				target: 'http://localhost:61124',
				pathRewrite: {"^/demo": ""},
				ws: true,
				changeOrigin: true
			}
		}
	}
}