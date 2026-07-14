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
(global-set-key (kbd "M-m p s") 'projectile-switch-open-project)
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
(global-set-key (kbd "C-c g") 'hydra-git/body)
(global-set-key (kbd "C-c n") 'hydra-narrow/body)

;; Clojure mode
(define-key input-decode-map (kbd "C-i") (kbd "H-i"))
(add-hook 'clojure-mode-hook
	  (lambda ()
            (define-key clojure-mode-map (kbd "C-c H-i") 'cider-inspect-last-sexp)))


(global-set-key (kbd "C-c b") 'bs-show)

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

(global-set-key (kbd "C-c v") 'vundo)
(global-set-key (kbd "C-c y") 'yas-expand)

(global-set-key (kbd "C-c z") 'reveal-in-osx-finder)


(define-key ivy-occur-mode-map (kbd "p") 'ivy-occur-previous-line)
(define-key ivy-occur-mode-map (kbd "n") 'ivy-occur-next-line)

;; 
(define-key abc-mode-map (kbd "C-c C-c")
	    (lambda ()
	      (interactive)
	      (abc-generate-ps)))

;;; remove the zoom in zoom out accidentsn
