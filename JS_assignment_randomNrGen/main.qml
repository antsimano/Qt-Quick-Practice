import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import "code.js" as Code

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Rectangle {
        id: showBox
        anchors.centerIn: parent
        width: 50
        height: 50

        Label {
            id: randomNrLabel
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 30
            text: "0"

        }
    }

    Button {
        id: generatorButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height / 2 + 60
        text: "Click me!"
        onClicked: {
            Code.randomNrGenerator()
            randomNrLabel.text = Code.randomNr
        }
    }
}
