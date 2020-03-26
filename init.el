;;
;; package read
;;

;;Emacs directory
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;;Package management
(require 'package)
(add-to-list 'package-archives '("gnu"	      . "http://elpa.gnu.org/packages/")t)
(add-to-list 'package-archives '("melpa"	      . "http://melpa.org/packages/")t)
(add-to-list 'package-archives '("melpa-stable"      . "http://stable.melpa.org/packages/")t)
(add-to-list 'package-archives '("org"	              . "http://orgmode.org/elpa/")t)
(add-to-list 'package-archives '("ELPA" 	      . "http://tromey.com/elpa/")t)
(package-initialize)

;;straight.el settings
(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;;use-package install
(straight-use-package 'use-package)

;;Automatically fall back to use-package straight.el
;;without options
(setq straight-use-package-by-default t)

;;install & load init-loader
(use-package init-loader)

;; ~/.emacs.d/init/ Read all of the following files
(init-loader-load "~/.emacs.d/init")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cica" :foundry "TMNM" :slant normal :weight normal :height 128 :width normal)))))
