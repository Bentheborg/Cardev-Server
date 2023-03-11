window.addEventListener("load", function () {

	var wprompt = new WPrompt();

	wprompt.onClose = function (type) {
		$.post("http://Cardev-Main/prompt", JSON.stringify({act: "close", result: wprompt.result, type: type}));
	}

	//MESSAGES
	window.addEventListener("message", function (evt) { //lua actions
		var data = evt.data;

		//PROMPT
		if (data.act == "open_prompt") {
			wprompt.open(data.title, data.text, data.type);
		}
		else if (data.act == "close_prompt") {
			wprompt.close();
		}
		// CLIPBOARD
		else if (data.act == "copy_clipboard") {
			var copyFrom = $("<textarea/>");
			copyFrom.text(data.text);
			$("body").append(copyFrom);
			copyFrom.select();
			this.document.execCommand("copy");
			copyFrom.remove()
		}
	});
});