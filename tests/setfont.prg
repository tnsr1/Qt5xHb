/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oActionA1
   LOCAL oActionA2
   LOCAL oActionA3
   LOCAL oMenuB
   LOCAL oActionB1
   LOCAL oActionB2
   LOCAL oMenuC
   LOCAL oActionC1
   LOCAL oLabel

   oApp := QApplication():new()

   oApp:setFont(QFont():new("Helvetica",12))

   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Exemplo")
   oMainWindow:resize(640,480)

   oMenuBar := oMainWindow:menuBar()

   oMenuA := oMenuBar:addMenu("Menu &A")

   oActionA1 := oMenuA:addAction("Op��o A1")
   oActionA1:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o A1")})

   oActionA2 := oMenuA:addAction("Op��o A2")
   oActionA2:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o A2")})

   oActionA3 := oMenuA:addAction("Op��o A3")
   oActionA3:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o A3")})

   oMenuB := oMenuBar:addMenu("Menu &B")

   oActionB1 := oMenuB:addAction("Op��o B1")
   oActionB1:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o B1")})

   oActionB2 := oMenuB:addAction("Op��o B2")
   oActionB2:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o B2")})

   oMenuC := oMenuBar:addMenu("Menu &C")

   oActionC1 := oMenuC:addAction("Op��o C1")
   oActionC1:onTriggered({|w,l|QMessageBox():information(oMainWindow,"Aviso","Voc� escolheu a op��o C1")})

   oMainWindow:Show()

   oLabel := QLabel():new("<center><font color=red>Exemplo de como definir uma fonte para a aplica��o inteira</font></center>")

   oMainWindow:setCentralWidget(oLabel)

   oApp:exec()
   
   oMainWindow:delete()
   
   oApp:delete()

RETURN
