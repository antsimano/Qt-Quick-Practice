import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Column {
        id: column
        width: parent.width / 3
        height: parent.height - (parent.height / 6)
        anchors.centerIn: parent
        spacing: 25

        CoolButton {
            id: downBtn
            width: 100
            height: 100
            source: "qrc:/files/images/downArrow.svg"
            onClicked: console.log("Up clicked")
        }
        CoolButton {
            id: upBtn
            width: 100
            height: 100
            source: "qrc:/files/images/upArrow.svg"
            onClicked: console.log("Down clicked")
        }
    }
}
