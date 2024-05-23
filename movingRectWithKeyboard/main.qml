import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: root
        anchors.fill: parent

        Rectangle {
            id: background
            color: "lightblue"
            anchors.fill: parent
            focus: true

            Rectangle {
                id: myRect
                color: "royalblue"
                x: (parent.width / 2) - (width / 2)
                y: (parent.height / 2) - (height / 2)
                width: 100
                height: 100
                border.color: "black"
                border.width: 2
            }

            Keys.onUpPressed: myRect.y -= 5
            Keys.onDownPressed: myRect.y += 5
            Keys.onRightPressed: myRect.x += 5
            Keys.onLeftPressed: myRect.x -= 5
        }
    }
}
