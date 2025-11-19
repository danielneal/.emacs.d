(use-package ivy
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq projectile-indexing-method 'hybrid)
  (setq ivy-sort-matches-functions-alist
      '((t . nil)
	(counsel-recentf . ivy--shorter-matches-first)
	(ivy-switch-buffer . ivy--shorter-matches-first)))
  (setq tab-always-indent 'complete)
  (setq ivy-calling t)
  (add-to-list 'completion-styles 'initials t))






