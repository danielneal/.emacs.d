;; I use backup walker to traverse backups
;; (run backup-walker-start).

;; I'll also configure autosaving and backups here. Needs work
(use-package backup-walker
  :config
  (progn
    (setq backup-by-copying t
	  backup-directory-alist
	  `(("." . "~/.emacs.d/saves/"))
	  delete-old-versions t
	  kept-new-versions 30
	  kept-old-versions 10
	  version-control t)
    
    (setq auto-save-interval 20)))




