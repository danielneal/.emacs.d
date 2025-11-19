(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (setq exec-path-from-shell-variables '("PATH" "NVM_DIR" "FAUST_PATH" "JAVA_HOME")) 
    (exec-path-from-shell-initialize)))


