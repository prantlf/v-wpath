module wpath

const slash = '\\'

fn test_empty() {
	out := basename('')
	assert out == ''
}

fn test_name() {
	out := basename('a')
	assert out == 'a'
}

fn test_slash() {
	out := basename('${wpath.slash}')
	assert out == '${wpath.slash}'
}

fn test_two_slashes() {
	out := basename('${wpath.slash}${wpath.slash}')
	assert out == '${wpath.slash}'
}

fn test_name_ends_with_slash() {
	out := basename('a${wpath.slash}')
	assert out == 'a'
}

fn test_name_ends_with_two_slashes() {
	out := basename('a${wpath.slash}${wpath.slash}')
	assert out == 'a'
}

fn test_name_starts_with_slash() {
	out := basename('${wpath.slash}a')
	assert out == 'a'
}

fn test_names_with_slash() {
	out := basename('a${wpath.slash}b')
	assert out == 'b'
}
