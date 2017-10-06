(progn
(defun melm-common-procedure-and-print(textStrings)
  ""
  (let
    (
      offset      
    )
    (setq offset (make-string (current-column) ?\ ))
    (setq textStrings ;добавляем отступ ко всем строкам, кроме первойа
      (cons 
	(car textStrings)
	(mapcar
	  (lambda (string)
	    (concat offset string)
	  )
	  (cdr textStrings)
	)
      )
    )
    (princ ;выводим результирующий текст
      (mapconcat ;соединяем все строки в текст
	(lambda (string)
	  string
	)
	textStrings
	"\n"
      )	
      (current-buffer)
    )		
  )
)


(defun melm-defun(name signature)
	""
  (interactive "sname: \nssignature: ")
  (let
    (
      textStrings
      offset
    )


    (setq textStrings ;получить список строк
      (list
			   (concat 
	"(defun " name "(" signature")")
	"  \"\""
	"  (let"
	"    ("
	"      "
	"      "
	"    )"
	"    "
	"  )"
	")"
      )
    )
    (melm-common-procedure-and-print textStrings) ; обработать список строк и вывести текст
  )
)




)










