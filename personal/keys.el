;; set command and mac key to meta
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'meta)
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-q") 'cider-format-defun)

(global-set-key [remap mark-sexp] nil)
(global-set-key [remap kill-ring-save] nil)

(global-unset-key (kbd "M-m"))

(global-set-key (kbd "C-M-SPC") 'mark-sexp)
(global-set-key (kbd "M-m f r") 'counsel-recentf)
(global-set-key (kbd "M-m p f") 'counsel-projectile-find-file)
(global-set-key (kbd "M-m s g p") 'counsel-projectile-git-grep)

(global-set-key (kbd "S-<right>") 'windmove-swap-states-right)
(global-set-key (kbd "S-<left>") 'windmove-swap-states-left)
(global-set-key (kbd "S-<up>") 'windmove-swap-states-up)
(global-set-key (kbd "S-<down>") 'windmove-swap-states-down)
(global-unset-key (kbd "C-<triple-wheel-down>"))
(global-unset-key (kbd "C-<triple-wheel-up>"))

;; allow insert of hash with right alt on mac os x uk keyboard
(global-set-key (kbd "M-3")
                '(lambda () (interactive) (insert "#")))

