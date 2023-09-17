(straight-use-package 'clojure-mode)
(straight-use-package 'cider)
(straight-use-package 'flycheck-joker)

(add-hook 'clojure-mode-hook
          #'(lambda ()
              (flycheck-mode t)
              (show-paren-mode t)
	      (paredit-mode)
              (setq clojure-indent-style 'always-align)
              (prism-mode)
              (set-face-attribute 'cider-debug-prompt-face nil
                                  :foreground "#FF00FF")
              (set-face-attribute 'cider-debug-code-overlay-face nil
                                  :background "#FFFF00"
                                  :foreground "#000000")))

(add-hook 'cider-repl-mode-hook
          #'(lambda ()
              (paredit-mode)))

(add-to-list 'auto-mode-alist '("\\.cljd\\'" . clojure-mode))

