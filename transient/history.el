((cider-log--appender-threshold-option "1" 10)
 (cider-log-appender
  ((cider-log-appender-size . 100000)
   (cider-log-appender-threshold . 10)
   (cider-log--end-time-filter)
   (cider-log--exceptions-filter)
   (cider-log--level-filter)
   (cider-log--loggers-filter)
   (cider-log--pattern-filter)
   (cider-log--start-time-filter)
   (cider-log--threads-filter)))
 (cider-log-framework nil)
 (gptel--infix-model "gpt-4" "gpt-3.5-turbo")
 (gptel-menu nil)
 (gptel-system-prompt nil)
 (magit-blame
  ("-w")
  nil)
 (magit-branch nil)
 (magit-cherry-pick
  ("--ff")
  nil)
 (magit-commit nil
	       ("--reset-author"))
 (magit-diff
  ("--no-ext-diff" "--stat")
  ("--ignore-all-space" "--no-ext-diff" "--stat"))
 (magit-ediff nil)
 (magit-fetch nil)
 (magit-file-dispatch nil)
 (magit-gitignore nil)
 (magit-log
  ("-n256" "--graph" "--decorate")
  ("-n512" "--graph" "--decorate"))
 (magit-merge nil
	      ("--no-ff"))
 (magit-pull nil
	     ("--ff-only"))
 (magit-push nil
	     ("--force-with-lease"))
 (magit-rebase
  ("--autostash")
  nil
  ("--autostash" "--interactive"))
 (magit-revert
  ("--edit"))
 (magit-show-refs nil)
 (magit-stash nil)
 (magit-submodule nil)
 (magit-tag nil))
