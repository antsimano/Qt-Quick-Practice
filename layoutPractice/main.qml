import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        anchors.centerIn: parent
        spacing: 4
        columns: 3
        rows: 5

        InvisibleShape {}
        InvisibleShape {}
        InvisibleShape {}

        MyShape {
            Text {
                id: seven
                text: qsTr("7")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: eight
                text: qsTr("8")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: nine
                text: qsTr("9")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: four
                text: qsTr("4")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: five
                text: qsTr("5")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: six
                text: qsTr("6")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: one
                text: qsTr("1")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: two
                text: qsTr("2")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        MyShape {
            Text {
                id: three
                text: qsTr("3")
                anchors.centerIn: parent
                font.bold: true
            }
        }

        InvisibleShape {}

        MyShape {
            Text {
                id: zero
                text: qsTr("0")
                anchors.centerIn: parent
                font.bold: true
            }
        }
    }
}
