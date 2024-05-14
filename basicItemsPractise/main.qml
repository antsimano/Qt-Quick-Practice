import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: qtLogo
        source: "qrc:/../rootObject/Qtcreator_Faenza.svg.png"

        height: 250
        fillMode: Image.PreserveAspectFit

        x: 100
        y: middle

        Rectangle {
            id: overlay
            anchors.fill: parent
            color: "orange"
            opacity: 0.5
            visible: false
        }

            MouseArea {
                id: myMouse
                anchors.fill: parent
                hoverEnabled: true
                onEntered: overlay.visible = true
                onExited: overlay.visible = false
                onClicked: Qt.openUrlExternally("http://www.qt.io")
            }
        }


    }

