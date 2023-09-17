(straight-use-package 'dired-rainbow)
(require 'dired-rainbow)
(add-hook 'dired-mode-hook '(lambda ()
                              (dired-hide-details-mode t)))
