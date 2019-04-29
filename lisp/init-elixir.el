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
(provide 'init-elixir)
;;; init-elixir.el ends here
