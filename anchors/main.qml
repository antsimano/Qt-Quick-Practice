import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyShape {
        id: shapeCentral
        anchors.centerIn: parent
        // @disable{check: M16}
        text: "Center"

        Rectangle {
            width: 25
            height: 25
            color: "pink"
            // no anchor by default
            // anchors.centerIn: parent
            // anchors.fill: parent
            // anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape {
        id: shapeTop
        text: "Top"
        color: "green"
        anchors.bottom: shapeCentral.top
        anchors.left: shapeCentral.left
    }

    MyShape {
        id: shapeBottom
        text: "Bottom"
        color: "blue"
        anchors.top: shapeCentral.bottom
        anchors.left: shapeCentral.left
    }

    MyShape {
        id: shapeLeft
        text: "Left"
        color: "red"
        anchors.top: shapeCentral.top
        anchors.right: shapeCentral.left
    }

    MyShape {
        id: shapeRight
        text: "Right"
        color: "yellow"
        anchors.top: shapeCentral.top
        anchors.left: shapeCentral.right
    }
}
