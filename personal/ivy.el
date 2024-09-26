(straight-use-package 'ivy)
(straight-use-package 'counsel-projectile)
(ivy-mode)

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq projectile-indexing-method 'hybrid)

(setq counsel-projectile-git-grep-cmd-default
      "git --no-pager grep -n --no-color -i -e \"%s\" $(git rev-parse --show-toplevel | tr -d '\n') -- '*.ext' ':!*.json'")

(setq ivy-sort-matches-functions-alist
      '((t . ivy--shorter-matches-first)))

