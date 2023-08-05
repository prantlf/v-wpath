module wpath

const slash = '\\'

fn test_empty() {
	out := dirname('')
	assert out == '.'
}

fn test_name() {
	out := dirname('a')
	assert out == '.'
}

fn test_slash() {
	out := dirname('${wpath.slash}')
	assert out == '${wpath.slash}'
}

fn test_two_slashes() {
	out := dirname('${wpath.slash}${wpath.slash}')
	assert out == '${wpath.slash}'
}

fn test_name_ends_with_slash() {
	out := dirname('a${wpath.slash}')
	assert out == '.'
}

fn test_name_ends_with_two_slashes() {
	out := dirname('a${wpath.slash}${wpath.slash}')
	assert out == '.'
}

fn test_name_starts_with_slash() {
	out := dirname('${wpath.slash}a')
	assert out == '${wpath.slash}'
}

fn test_name_starts_with_two_slashes() {
	out := dirname('${wpath.slash}${wpath.slash}a')
	assert out == '${wpath.slash}'
}

fn test_names_with_slash() {
	out := dirname('a${wpath.slash}b')
	assert out == 'a'
}
