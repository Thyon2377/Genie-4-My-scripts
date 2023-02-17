start:
	save 0

get_book:
	match get_book ...wait
	matchre chapter_next /You get|You are already/i
	matchre done /could not find|referring to/i
	put get my %1 book
	matchwait

chapter_next:
	counter set %s
	counter add 1
	save %c
	counter set 0

chapter_turn:
	match chapter_turn ...wait
	matchre page_next /You turn|The book is already/i
	match start does not have
	put turn my book to chapter %s
	matchwait

page_next:
	counter add 1

page_turn:
	match page_turn ...wait
	match page_study You turn
	match chapter_next This chapter does not
	put turn my book to page %c
	matchwait

page_study:
	match page_study ...wait
	matchre exp /Roundtime|You (read|peruse|scan|review)/i
	put study my book
	matchwait

exp:
	matchre done /(34/34)|mind lock/i
	match page_next EXP HELP
	put exp schol
	matchwait

done:
	exit
