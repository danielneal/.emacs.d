;; Celestial modeline allows me to keep an eye on the moon phase
;; and the sunset time in the modeline

(use-package celestial-mode-line
  :config
  (progn
    (setq calendar-latitude 51.5072)
    (setq calendar-longitude 0.1276)
    (setq calendar-location-name "London")

    (celestial-mode-line-start-timer)))


