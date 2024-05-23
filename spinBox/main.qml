import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 0
        y: 0
        width: 209
        height: 51
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25
        columns: 2

        SpinBox {
            id: spinBox
            //onValueModified: label.text = value
        }

        Label {
            id: label
            text: spinBox.value
            font.pointSize: 22
            font.bold: true
        }
    }

//    Connections {
//        target: spinBox
//        onValueModified: label.text = target.value
//    }
}
