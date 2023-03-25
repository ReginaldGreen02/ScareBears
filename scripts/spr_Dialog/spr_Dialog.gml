function spr_Dialog(_text, _width){
	var _text_wrapped = ""; //defines what text we will wrap around
	var _space = -1; // used to see if there is an empty space between letters, etc.
	var _char_pos = 1; // position in string we are checking
	while (string_length(_text) >= _char_pos){
		if (string_width(string_copy(_text, 1, _char_pos)) > _width){
			if (_space != -1){
				_text_wrapped += string_copy(_text, 1, _space) + "\n"; // add copy of string of text at 1 and at the space, then add line break.
				_text = string_copy(_text, _space + 1, string_length(_text) - (_space)); // string_copy = *text, *start position, *end position
				_char_pos = 1; // Start at first position
				_space = -1; // Reset space
				
			}
		}
		if (string_char_at(_text, _char_pos) == " "){
			_space = _char_pos;
		}
		_char_pos += 1;
	}
	if (string_length(_text) > 0){
		_text_wrapped += _text;
	}
	return _text_wrapped;
}