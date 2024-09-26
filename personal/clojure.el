(use-package clojure-mode
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.cljd\\'" . clojure-mode))))

(use-package cider)
(use-package flycheck-joker)
(use-package clj-refactor)

(add-hook 'clojure-mode-hook
          (lambda ()
            (flycheck-mode t)
            (show-paren-mode t)
	    (clj-refactor-mode t)
	    (paredit-mode)
            (setq clojure-indent-style 'always-align
		  tab-always-indent 'complete
		  cider-test-fail-fast nil
		  cider-print-fn 'puget
		  cider-print-quota (* 1024 512) ; 512kb
		  cider-pprint-options '(("width" 120)))
	    
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


