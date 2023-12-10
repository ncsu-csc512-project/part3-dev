sync-to-submission-repo-dryrun:
	rsync -au --delete --progress -h --include-from='include.txt' ./ ../part3-submission/ -n

sync-to-submission-repo:
	rsync -au --delete --progress -h --include-from='include.txt' ./ ../part3-submission/
	
push-and-open-submission-repo:
	cd ../part3-submission/ && git add . && git commit -m "update" && git push origin master && cd - && open https://github.com/ncsu-csc512-project/part3-submission

push-and-sync-all: sync-to-submission-repo
	# git add . && git commit -m "update" && git push origin master && make sync-to-submission-repo && make push-and-open-submission-repo
	git-pp -p . ../part3-submission/
