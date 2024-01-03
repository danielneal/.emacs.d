(setq-default mode-line-format
              (list mode-line-buffer-identification
		    "  Line %l Column %c"
		    "  " '(:eval celestial-mode-line-string)))
