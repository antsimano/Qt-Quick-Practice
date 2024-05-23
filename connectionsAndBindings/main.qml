import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 63
        y: 64
        width: 100
        height: 100
        color: "#e0220c"
        border.color: "#080808"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 201
        y: 64
        width: rectangle.width
        height: rectangle.height
        color: "#0ce079"
        border.color: "#080808"
    }

    Rectangle {
        id: rectangle2
        x: 336
        y: 64
        width: 100
        height: 100
        color: "#0c6ee0"
        border.color: "#080808"
    }

    Connections {
        target: mouseArea
        onClicked: {
            print("clicked")
            rectangle.width = 50
            rectangle.height = 150
        }
    }
}
