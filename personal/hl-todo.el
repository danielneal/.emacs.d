(use-package hl-todo
  :config
  (setq hl-todo-keyword-faces
	'(("TODO"   . "#FF8888")
	  ("OPEN"  . "#FFFF88")
	  ("PROGRESS"  . "#88FF88")
	  ("DONE"  . "#8888FF")))
  (global-hl-todo-mode))


