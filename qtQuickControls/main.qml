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
        x: 301
        y: 203
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Dial {
        id: dial
        x: 65
        y: 219
        width: 152
        height: 151
    }

    CheckBox {
        id: checkBox
        x: 468
        y: 111
        text: qsTr("Check Box")
    }

    DelayButton {
        id: delayButton
        x: 468
        y: 220
        text: qsTr("Delay Button")
    }
}
