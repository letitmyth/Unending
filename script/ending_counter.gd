extends RichTextLabel

var default_text = "Ending: "
var final_ending = "/3"

func _process(delta):
	var text = str(default_text, str(Global.ending), final_ending)
	self.text = (text)
