" Change the :browse e filter to primarily show xml-related files.
if has("gui_win32")
    let  b:browsefilter= "All Files (*.*)\t*.*\n" .
			\	"GCFF Files (*.*)\t*.gcff\n" .
			\	"XML Files (*.xml)\t*.xml\n" .
			\	"DTD Files (*.dtd)\t*.dtd\n" 
endif
