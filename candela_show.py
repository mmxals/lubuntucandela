from PyQt5.QtCore import QUrl
from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.QtWebKitWidgets import QWebView 

class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.web = QWebView(self)
        self.web.showFullScreen()
        self.web.load(QUrl("http://www.ateneucandela.info/presentacio/index.html"))
        self.setCentralWidget(self.web)

    def keyPressEvent(self, eventkey):
        key = eventkey.key()
        if key:
            self.close()
        
if __name__ == '__main__':

    import sys

    app = QApplication(sys.argv)

    browser = MainWindow()
    browser.showFullScreen()
    browser.show()

sys.exit(app.exec_())
