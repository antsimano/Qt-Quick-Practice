import QtQuick 2.12
import QtQuick.Window 2.12

// ID - must be unique
// Root Object - there can be only one

// Top Level object is the root!
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Image {
        id: myImage
        source: "./Qtcreator_Faenza.svg.png"
        width: 150
        height: 120
        anchors.centerIn: parent

        Rectangle {
            color: "red"
            width: parent.width
            height: parent.height
            opacity: 0.5 //50%
        }
    }
}
