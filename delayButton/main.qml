import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        x: 40
        y: 6
        width: 522
        height: 55
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        DelayButton {
            id: delayButton
            text: qsTr("Delete Everything")
            delay: 300
            onProgressChanged: {
                label.text = Math.round(progress * 100) + "%"
                if(progress === 0) {
                    text = "Delete Everything"
                    label.text = "Status"
                }
            }
        }

        Label {
            id: label
            text: qsTr("Status")
            font.bold: true
            font.pointSize: 25
        }
    }

    Connections {
        target: delayButton
        onActivated: {label.text = "Done"; target.text = "BOOOM"}
    }

//    Connections {
//        target: delayButton
//        onProgressChanged: label.text = "progress"
//    }
}
