import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 1200
    height: 800
    visible: true
    title: qsTr("Tabs")

    header: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Zöldségek darabolása")
        }
        TabButton {
            text: qsTr("Batonnets")
        }
        TabButton {
            text: qsTr("Julienne")
        }
        TabButton {
            text: qsTr("Brunoise")
        }
        TabButton {
            text: qsTr("Mirepoix")
        }
        TabButton {
            text: qsTr("Salpicon")
        }
        TabButton {
            text: qsTr("Matignon")
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {

        }
        Page2Form {

        }
        Page3Form {

        }
        Page4Form {

        }
        Page5Form {

        }
        SalpiconForm {

        }
        MatignonForm {

        }
    }


}
