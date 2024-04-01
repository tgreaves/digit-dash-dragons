extends Node


func log_entry(text):
	if Constants.DEV_LOGGING == false:
		return

	#var source = get_stack()[1]["function"]
	var source = str(get_stack()[1])
	
	var text_split = text.split("\n")

	for single_line in text_split:
		print("[" + source + "] " + single_line)
