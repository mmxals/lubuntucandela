#!/usr/bin/python
import os,sys
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from PyQt4.QtWebKit import *
from PyQt4 import QtGui, QtCore

class browser(QtGui.QWidget):
   
    def __init__(self):
        QtGui.QMainWindow.__init__(self)

        self.web = QWebView()
        self.web.load(QUrl("http://ateneucandela.info/presentacio/index.html"))
        self.initUI()

    def initUI(self):

        layout = QStackedLayout()
        layout.addWidget(self.web)
        self.setLayout(layout)
        self.showFullScreen()
       
    def keyPressEvent(self, eventkey):
      key = eventkey.key()
      if key:
         self.close()
        
    def mouseMoveEvent(self, eventmouse):
      mouse = eventmouse.pos()
      if mouse:
        self.close()

def main():
    app = QtGui.QApplication(sys.argv)
    ex = browser()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()