import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: name
        source: "/../rootObject/Qtcreator_Faenza.svg.png"
        width: 150
        height: 120
        opacity: 0.25
        anchors.centerIn: parent
    }

    TextInput {
        id: myInput
        text: "Hello World!"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
    }
}
