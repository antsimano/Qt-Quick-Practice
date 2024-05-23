import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#887b80"
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 0
        width: 640
        height: 45
        spacing: 5

        Button {
            id: button
            text: qsTr("Cat")
        }

        Button {
            id: button1
            text: qsTr("Dog")
        }

        Button {
            id: button2
            text: qsTr("Fish")
        }

        Button {
            id: button3
            text: qsTr("Bird")
        }
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 51
        fillMode: Image.PreserveAspectFit
    }

    Connections {
        target: button
        onClicked: image.source = "qrc:/images/images/cat.jpg"
    }

    Connections {
        target: button1
        onClicked: image.source = "qrc:/images/images/dog.jpg"
    }

    Connections {
        target: button2
        onClicked: image.source = "qrc:/images/images/fish.jpg"
    }

    Connections {
        target: button3
        onClicked: image.source = "qrc:/images/images/bird.jpg"
    }
}

