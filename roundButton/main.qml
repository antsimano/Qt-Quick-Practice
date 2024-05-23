import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var value: 0

    Row {
        id: row
        x: 0
        y: 0
        width: 260
        height: 58
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        RoundButton {
            id: roundButton
            text: "+"
            font.pointSize: 15
            font.bold: true
            onClicked: value++
        }

        RoundButton {
            id: roundButton1
            text: "-"
            font.bold: true
            font.pointSize: 15
            onClicked: value--
        }

        Label {
            id: label
            text: "Value: " + root.value
            font.bold: true
            font.pointSize: 25
        }
    }
}
