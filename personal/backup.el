(straight-use-package 'backup-walker)

(setq backup-by-copying t
      backup-directory-alist
      '(("." . "~/.emacs.d/saves/"))
      delete-old-versions t
      kept-new-versions 30
      kept-old-versions 10
      version-control t)

(setq auto-save-interval 20)
