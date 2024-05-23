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
        x: 0
        y: 0
        width: 587
        height: 129
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("X to Y")
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RangeSlider {
            id: rangeSlider
            y: 70
            anchors.horizontalCenter: parent.horizontalCenter
            first.value: 0.25
            second.value: 0.75
        }
    }

    Connections {
        target: rangeSlider.first
        onValueChanged: {
            label.text = Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
        }
    }

    Connections {
        target: rangeSlider.second
        onValueChanged: {
            label.text = Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100)
        }
    }
}
