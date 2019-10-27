;;; init-ruby.el --- Support for the Ruby language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;;rbenv -----------
(require-package 'elixir-mode)
(require-package 'alchemist)

(add-to-list 'auto-mode-alist '("\\.elixir2\\'" . elixir-mode))
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(setq alchemist-mix-command "/usr/local/bin/mix")
(setq alchemist-mix-test-task "espec")
(setq alchemist-iex-program-name "/usr/local/bin/iex") ;; default: iex
(setq alchemist-execute-command "/usr/local/bin/elixir") ;; default: elixir
(setq alchemist-compile-command "/usr/local/bin/elixirc") ;; default: elixirc
(setq alchemist-key-command-prefix (kbd "C-c ,")) ;; default: (kbd "C-c a")
(provide 'init-elixir)
;;; init-elixir.el ends here
