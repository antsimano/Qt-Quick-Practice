import QtQuick 2.12
import QtQuick.Window 2.12

// Parent and Children Relationships

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
        x: 100
        y: 100
        z: 3

        Rectangle {
            color: "red"
            x: -25
            y: -25
            width: 50
            height: 50
            z: 1
            opacity: 0.5
        }

        Rectangle {
            color: "blue"
            x: parent.width - width
            y: parent.height - height
            width: 50
            height: 50
            z: 0
            opacity: 0.5
        }
    }
}
