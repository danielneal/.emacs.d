(straight-use-package 'paredit)

(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'html-mode-hook #'paredit-mode)
