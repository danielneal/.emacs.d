(straight-use-package 'quasi-monochrome-theme)
(load-theme 'quasi-monochrome t)

(setq gray-4 "#444444")
(setq gray-b "#BBBBBB")

(set-face-attribute
 'mode-line nil
 :background gray-4
 :foreground gray-b
 :height 1
 :box nil)

(set-face-attribute
 'mode-line-inactive nil
 :height 1
 :background gray-4
 :foreground gray-b
 :box nil)

