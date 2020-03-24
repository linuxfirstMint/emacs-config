;;
;; package read
;;

;;Emacs directory
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;;Package management
(require 'package)
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


