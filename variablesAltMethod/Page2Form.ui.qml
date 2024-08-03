import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400

    property alias name: label.text

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        id: column
        x: 0
        y: 104
        width: 300
        height: 126
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Title")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            text: qsTr("Click Me")
            font.capitalization: Font.MixedCase
            font.family: "Arial"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: name = "Hello World!!!"
        }
    }
}
