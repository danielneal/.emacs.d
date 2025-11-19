(use-package clojure-mode
  :config
  (add-hook 'clojure-mode-hook
            (lambda ()
              (show-paren-mode t)
	      (clj-refactor-mode t)
	      (paredit-mode)
              (setq clojure-indent-style 'always-align
		    tab-always-indent 'complete
		    cider-test-fail-fast nil
		    cider-print-fn 'puget
		    cider-print-quota (* 1024 512) ; 512kb
		    cider-log-max-message-length nil
		    cider-pprint-options '(("width" 120))
		    cider-preferred-build-tool 'clojure-cli
		    cider-jack-in-default 'clojure-cli)
	      (prism-mode)
              (set-face-attribute 'cider-debug-prompt-face nil
                                  :foreground "#FF00FF")
              (set-face-attribute 'cider-debug-code-overlay-face nil
                                  :background "#FFFF00"
                                  :foreground "#000000")))

  (add-hook 'cider-repl-mode-hook
            (lambda ()
	      (prism-mode)
	      (paredit-mode)))
  (add-hook 'cider-inspector-mode-hook
	    (lambda ()
	      (setq truncate-lines t)))
  (add-to-list 'auto-mode-alist '("\\.cljd\\'" . clojure-mode)))

;; I keep all my clojure and cider related settings here
(use-package cider
  :straight (cider :type git
		   :host github
		   :repo "clojure-emacs/cider"
		   :tag "v1.18.0"
		   :no-byte-compile t))

(use-package clj-refactor)





