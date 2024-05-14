import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        // anchors.centerIn: parent
        width: 100
        height: 100

        x: 50
        y: 50

        color: inputHandler1.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandler1
        }
    }

    Rectangle {
        width: 100
        height: 100

        x: 200
        y: 50

        color: inputHandler2.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandler2
        }
    }

}
