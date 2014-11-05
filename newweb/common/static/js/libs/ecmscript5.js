/*额外扩展的ecmscript5*/
if (!Array.prototype.indexOf) {
	Array.prototype.indexOf = function (obj, start) {
		for (var i = (start || 0); i < this.length; i++) {
			if (this[i] === obj) {
				return i;
			}
		}
		return -1;
	}
};