.PHONY: git-snapshot  ## @-> for your current commit into a new timestamped branch
git-snapshot:
	# @clear
	@$(eval current_branch=`git rev-parse --abbrev-ref HEAD`)
	@$(eval current_hash=`git rev-parse --short HEAD`)
	@$(eval current_time=`date "+%Y%m%d_%H%M%S"`)
	@git branch "${current_branch}--${current_time}-${current_hash}"
	git branch -a | grep ${current_branch} | sort -nr

