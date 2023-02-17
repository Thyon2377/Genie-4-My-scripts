var skill Locksmithing
var newbox 0
var lockTrainer %1
var container shadow

start:
	put get my %lockTrainer
	put lock my %lockTrainer

loop:

	put pick my %lockTrainer
	wait
	if $%skill.LearningRate >33 then goto end
	put lock my %lockTrainer
	wait
	goto loop

end:
	put put %lockTrainer in my %container
	echo ===========================
	echo Done. 
	echo ===========================