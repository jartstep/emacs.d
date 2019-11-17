(require 'package)
(setq package-enable-at-startup nil)
;; (add-to-list 'package-archives
;;     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
    '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
;; (add-to-list 'package-archives
;;      '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/Projects/Personal/emacs.d/0xk175un3.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-frontends
   (quote
    (company-pseudo-tooltip-frontend company-echo-metadata-frontend)))
 '(company-idle-delay 0.5)
 '(company-minimum-prefix-length 2)
 '(company-require-match nil)
 '(company-show-numbers t)
 '(company-tooltip-align-annotation t t)
 '(company-tooltip-align-annotations t)
 '(flycheck-disabled-checkers (quote (ruby-reek)))
 '(flycheck-display-errors-delay 0.3)
 '(global-company-mode t)
 '(lsp-prefer-flymake nil t)
 '(package-selected-packages
   (quote
    (silkworm-theme go-guru go-rename ag all-the-icons exec-path-from-shell use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
