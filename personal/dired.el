(add-hook 'dired-mode-hook '(lambda ()
			      (set-face-attribute 'dired-directory nil
						  :foreground "#00FFFF")
                              (dired-hide-details-mode t)))
