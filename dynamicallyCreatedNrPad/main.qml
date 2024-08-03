import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Column {
        id: column
        width: parent.width / 2
        height: parent.height - (parent.height / 4)
        anchors.centerIn: parent
        spacing: 25

        Label {
            id: lblStatus
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            text: "Status"
            horizontalAlignment: "AlignHCenter"
            verticalAlignment: "AlignVCenter"
            font.bold: true
            font.pointSize: 25
        }
        Rectangle {
            id: padContainer
            width: 130
            height: parent.height - lblStatus.height - 25
            anchors.horizontalCenter: parent.horizontalCenter

            NumberPad {
                id: nrPad
                anchors.centerIn: parent
                width: parent.width
                height: parent.height
                onClicked: lblStatus.text = value
            }
        }
    }
}
