import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyBox {
        id: myBox
        x: 220
        y: 140
        width: 200
        height: 200

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                if(parent.state === "on") {
                    parent.state = "off"
                } else {
                    parent.state = "on"
                }
            }
        }
    }
}
