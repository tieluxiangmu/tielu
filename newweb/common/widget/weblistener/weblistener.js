var webListerner = webListerner || {},
	webListerner = {
		init: function() {
			listener.on('com.myTest', 'say', function(evt,d) {
				console.log(d);
			});
		}
	}
module.exports = webListerner;