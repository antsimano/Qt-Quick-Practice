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
        width: 593
        height: 105
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        columns: 2

        Slider {
            id: slider
            width: 300
            stepSize: 0.1
            value: 0
        }

        Label {
            id: label
            text: "0"
            font.bold: true
            font.pointSize: 25
        }

        Connections {
            target: slider
            onMoved: label.text = Math.round(slider.value * 100) + "%"
        }
    }
}
