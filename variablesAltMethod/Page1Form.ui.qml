import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    property alias name: textField.text
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        id: column
        x: 0
        y: 0
        width: 200
        height: 117
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 9
        anchors.horizontalCenterOffset: 0
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Enter your name")
        }

        TextField {
            id: textField
            width: 200
        }
    }
}
