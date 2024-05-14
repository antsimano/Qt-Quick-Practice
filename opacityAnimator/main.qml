import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 480
    height: 700
    visible: true
    title: qsTr("Hello World")
    color: "black"

    Image {
        id: ghost
        source: "qrc:/images/ghost.jpg"
        anchors.fill: parent
        opacity: 0
    }

    SequentialAnimation {
        loops: Animation.Infinite
        running: true

        OpacityAnimator {
            target: ghost
            from: 0
            to: 1
            duration: 1000
        }

        OpacityAnimator {
            target: ghost
            from: 1
            to: 0
            duration: 5000
        }
    }
}
