import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 249
        y: 173
        width: 143
        height: 134
    }

    Label {
        id: label
        x: 295
        y: 123
        text: qsTr("Progress = ") + busyIndicator.running
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            anchors.fill: parent
            onClicked: {
                if(busyIndicator.running) {
                    console.log("Turning off")
                    busyIndicator.running = false
                } else {
                    console.log("Turning on")
                    busyIndicator.running = true
                }
            }
        }
    }
}
