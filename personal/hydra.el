(straight-use-package 'hydra)

(defhydra hydra-cider ()
  "cider"
  ("c" cider-storm-clear-recordings "storm-clear" :exit t)
  ("d" cider-storm-debug-fn "storm-debug")
  ("e" cider-storm-debug-current-fn "storm-debug-current")
  ("f" cider-jack-in-figwheel "cider-jack-in-figwheel")
  ("g" cider-debug-defun-at-point "cider-debug-current" :exit t)
  ("s" cider-jack-in-sqa "cider-jack-in-sqa"))
