((ai-code-menu nil)
 (cider-log--appender-threshold-option "1" 10)
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
 (gptel--infix-provider gpt-4o)
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
  ("--author=Daniel Neal (3E) <DNE@3e.eu>" "--graph" "--decorate")
  ("-n256" "--author=Daniel Neal <DNE@3e.eu>" "--graph" "--decorate")
  ("-n256" "--author=Daniel Neal (3E) <DNE@3e.eu>" "--graph" "--decorate")
  ("-n256" "--author=Richard Van Roy (3E) <RVR@3e.eu>" "--graph" "--decorate")
  ("-n256" "--author=Estevo Caamaño Castro (3E) <ECC@3e.eu>" "--graph" "--decorate")
  ("-n256" "--author=Daniel Neal <danielneal@Daniels-MacBook-Air.local>" "--graph" "--decorate")
  ("-n512" "--graph" "--decorate"))
 (magit-merge
  ("--no-ff")
  nil)
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
 (magit-tag nil)
 (magit:--author "Daniel Neal (3E) <DNE@3e.eu>" "Daniel Neal <DNE@3e.eu>" "Richard Van Roy (3E) <RVR@3e.eu>" "Estevo Caamaño Castro (3E) <ECC@3e.eu>" "Daniel Neal <danielneal@Daniels-MacBook-Air.local>"))
