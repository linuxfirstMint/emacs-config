;;
;; Org settings
;;

; Org modeの設定

;TODO状態
(setq org-todo-keywords
      '((sequencep "TODO(t)" "PROG(p)" "WAITING(w)" "NOTE(n)" "|" "DONE(d)" "SOMEDAY(s)")))


;ファイルの場所
(setq org-directory "~/Dropbox/Org")
(setq org-default-notes-file "notes.org")

;Org-captureの設定

;Org-captureを呼び出すキーシーケンス
(define-key global-map "\C-cc" 'org-capture)
;Org-captureのテンプレート（メニュー）の設定
(setq org-capture-templates
      '(
         ("n" "Note" entry (file+headline "~/Dropbox/Org/notes.org" "Notes")
          "* %?\nEntered on %U\n %i\n %a")
         ("t" "Todo" entry (file+headline  "~/Dropbox/Org/gtd.org""INBOX")
          "* TODO %?\n %i\n %a")
         ))

;メモをC-M-^一発で見るための設定
;https://qiita.com/takaxp/items/0b717ad1d0488b74429d から拝借
(defun show-org-buffer (file)
  ;"Show an org-file FILE on the current buffer."
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/Dropbox/Org/" file))))
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "notes.org")))

;Org-agendaの設定
(setq org-agenda-files '("~/Dropbox/Org"))

;Org-refileの設定
(setq org-refile-targets '((org-agenda-files : maxlevel . 3)))

