import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 29
        y: 25
        width: 306
        height: 454
        anchors.verticalCenter: parent.verticalCenter
        spacing: 50
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Value")
            font.pointSize: 50
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Dial {
            id: dial
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Connections {
            target: dial
            onMoved: label.text = Math.round(dial.value * 100)
        }
    }
}
