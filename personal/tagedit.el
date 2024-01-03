(straight-use-package 'tagedit)

(add-hook 'sgml-mode-hook #'(lambda ()
			      (tagedit-add-experimental-features)
			      (tagedit-add-paredit-like-keybindings)
			      (tagedit-mode 1)))
