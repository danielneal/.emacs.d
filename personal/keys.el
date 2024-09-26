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
(global-set-key (kbd "M-y") 'counsel-yank-pop)

(global-set-key (kbd "S-<right>") 'windmove-swap-states-right)
(global-set-key (kbd "S-<left>") 'windmove-swap-states-left)
(global-set-key (kbd "S-<up>") 'windmove-swap-states-up)
(global-set-key (kbd "S-<down>") 'windmove-swap-states-down)

;;; remove the zoom in zoom out accidentsn
(global-unset-key (kbd "C-<wheel-up>"))
(global-unset-key (kbd "C-<wheel-left>"))
(global-unset-key (kbd "C-<wheel-right>"))
(global-unset-key (kbd "C-<wheel-down>"))
(global-unset-key (kbd "C-<triple-wheel-left>"))
(global-unset-key (kbd "C-<triple-wheel-right>"))
(global-unset-key (kbd "C-<triple-wheel-up>"))
(global-unset-key (kbd "C-<triple-wheel-down>"))
(global-unset-key (kbd "<triple-wheel-left>"))
(global-unset-key (kbd "<triple-wheel-right>"))

;; Prevent "No comment syntax defined by disabling comment-line"
(global-unset-key (kbd "C-x C-;"))

;; allow insert of hash with right alt on mac os x uk keyboard
(global-set-key (kbd "M-3")
                (lambda () (interactive) (insert "#")))

;; Hydras
(global-set-key (kbd "C-c c") 'hydra-cider/body)

;; Point history
(global-set-key (kbd "C-c p") 'point-history-show)

;; Clojure mode 
(add-hook 'clojure-mode-hook
	  (lambda ()
            (define-key clojure-mode-map (kbd "C-c M-i") 'cider-inspect-last-sexp)))


(global-set-key (kbd "C-c b") 'new-buffer)

;; Treemacs
(global-set-key (kbd "C-c t") (lambda ()
				(interactive)
				(treemacs)
				(treemacs--do-follow-project)))

(global-set-key (kbd "C-c r") (lambda ()
				(interactive)
				(refresh-treemacs-icons)))

(global-set-key (kbd "C-c f") (lambda ()
				(interactive)
				(treemacs--do-follow-project)))

(global-set-key (kbd "C-x v") 'vundo)


