(progn
(defun melm-common-procedure-and-print(textStrings)
  ""
  (let
    (
      offset      
    )
    (setq offset (make-string (current-column) ?\ ))
    (setq textStrings ;добавляем отступ ко всем строкам, кроме первой
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
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat "(defun " name "(" signature ")")
        (concat (make-string tab-width ?\ ) "\"\"")
        (concat (make-string tab-width ?\ ) ";(interactive)")
        (make-string tab-width ?\ )
        (concat (make-string tab-width ?\ ) "(let")
        (concat (make-string (* tab-width 2) ?\ ) "(")
        (make-string (* tab-width 3) ?\ )
        (concat (make-string (* tab-width 2) ?\ ) ")")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 2)
    (right-char (- (* tab-width 2) 1))
  )
)







(defun melm-let()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(let"
        (concat (make-string tab-width ?\ ) "(")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 3)
    (right-char (- (* tab-width 2) 1))
  )
)


   




(defun melm-if()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(if()"
        (concat (make-string tab-width ?\ ) "(progn")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 3)
    (right-char (- (* tab-width 2) 1))
  )
)


  

      



(defun melm-when()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(when()"
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)


    



(defun melm-while()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(while()"
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)


     



  

(defun melm-unless()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(unless()"
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)

     


(defun melm-cond()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(cond"
        (concat (make-string tab-width ?\ ) "(()")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        (concat (make-string tab-width ?\ ) "(t")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 5)
    (right-char (- (* tab-width 2)  1))
  )
)









(defun melm-case()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(()"
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)



    





(defun melm-throw(exception catch-value)
  ""
  (interactive "sexception: \nscatch return value :")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat
        "(throw '" exception " " catch-value")")
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)



(defun melm-catch(exception)
  ""
  (interactive "sexception: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat
        "(catch '" exception)
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
  )
)


   


(defun melm-and()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(and () ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (left-char 5)
  )
)







(defun melm-or()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(or () ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (left-char 5)
  )
)






(defun melm-not()
  ""
  (interactive)
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        "(not ())"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (left-char 2)
  )
)






(defun melm-lambda(signature)
  ""
  (interactive "ssignature: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat "(lambda " "(" signature ")")
        (concat (make-string tab-width ?\ ) "\"\"")
        (concat (make-string tab-width ?\ ) ";(interactive)")
        (make-string tab-width ?\ )
        (concat (make-string tab-width ?\ ) "(let")
        (concat (make-string (* tab-width 2) ?\ ) "(")
        (make-string (* tab-width 3) ?\ )
        (concat (make-string (* tab-width 2) ?\ ) ")")
        (make-string (* tab-width 2) ?\ )
        (concat (make-string tab-width ?\ ) ")")
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line 4)
    (right-char (- (* tab-width 3) 1))
  )
)



     
 





(defun melm-vcom(com)
  ""
  (interactive "scom: ")
  (let
    (
      textStrings
    )
    
    
    (setq textStrings ;предварительный список строк
      (list
        (concat "(" com)
        (make-string tab-width ?\ )
        ")"
      )
    )
    (melm-common-procedure-and-print textStrings)
    (previous-line)
    (right-char (- tab-width 1))
  )
)

    

     

)










