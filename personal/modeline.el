(setq display-time-day-and-date t)

(setq display-time-format "%A, %d %B")
(setq display-time-default-load-average nil)

(setq-default mode-line-format
              (list mode-line-buffer-identification
		    " Line %l"
		    " "
		    'vc-mode
		    " "
		    '(:eval (substring celestial-mode-line-string 0 2))
		    " "
		    'display-time-string))

(display-time-mode t)

