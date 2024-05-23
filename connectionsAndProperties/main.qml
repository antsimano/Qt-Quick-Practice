import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 91
        y: 140
        width: 200
        height: 200
        color: "#367fd3"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 358
        y: 140
        width: 200
        height: 200
        color: "#178352"
        property string title: "Title"

        Text {
            id: text1
            color: "#f5f1f1"
            text: parent.title
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 35
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Connections {
        target: mouseArea
        onClicked: rectangle1.title = "Hello"
    }

}
