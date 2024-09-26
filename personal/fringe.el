(fringe-mode '(8 . 0))

(add-hook 'window-setup-hook
          (lambda ()
            (set-face-attribute 'fringe nil
                                :background "#000000")))

