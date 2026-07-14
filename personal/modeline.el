(setq display-time-day-and-date t)

(setq display-time-format "%A")

(setq display-time-default-load-average nil)

(which-function-mode t)

(display-time-mode t)

(defun weekday-to-planetary-glyph (weekday)
  "Return the planetary glyph for the given WEEKDAY."
  (let ((glyphs '(("Sunday"    . "☉") ; Sun
                  ("Monday"    . "☽") ; Moon
                  ("Tuesday"   . "♂") ; Mars
                  ("Wednesday" . "☿") ; Mercury
                  ("Thursday"  . "♃") ; Jupiter
                  ("Friday"    . "♀") ; Venus
                  ("Saturday"  . "♄")))) ; Saturn
    (cdr (assoc weekday glyphs))))

(defun leftmost-visible-window-p ()
  "Check if the current window is the first (leftmost) in terms of screen position."
  (let ((leftmost-window (car (sort (window-list)
                                    (lambda (w1 w2)
                                      (< (window-pixel-left w1) (window-pixel-left w2)))))))
    (eq leftmost-window (selected-window))))


(setq-default mode-line-format
              (list '(:eval (concat (format-time-string " %A ")
				    (propertize
				     (weekday-to-planetary-glyph (format-time-string "%A"))
				     'face '(:height 180 :weight bold)
				     'display '(raise -0.1))))
		    " "
		    mode-line-buffer-identification
		    " "
		    
		    " "
		    '(:eval (propertize
			     (substring celestial-mode-line-string 0 4)
			     'face '(:foreground "#88FFFF")))

		    '(:eval (when vc-mode
			      (propertize (substring vc-mode 5)
					  'face '(:foreground "#FF8888"))))
		    " "
		    (propertize "Line %l, Col %c"
				'face '(:foreground "#FFFF88"))
		    " "
		    '(:eval (let ((wf (which-function)))
			      (when (stringp wf)
				(propertize wf 'face '(:foreground "#88FF88")))))))



