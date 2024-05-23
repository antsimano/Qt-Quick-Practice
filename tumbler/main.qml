import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var lockCode: "529"
    property string status: "Locked"

    Popup {
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        width: 250
        height: 400
        modal: true
        focus: true
        anchors.centerIn: parent

        Label {
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.pointSize: 25
            font.bold: true
            color: "darkred"
        }
    }

    Column {
        id: column
        width: 266
        height: 344
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("000")
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 25
        }

        Row {
            id: row
            width: 190
            height: 210
            anchors.horizontalCenter: parent.horizontalCenter

            Tumbler {
                id: tumbler
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler1
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler2
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }
        }

        Button {
            id: button
            text: qsTr("Check")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                let tempCode = tumbler.currentIndex + "" + tumbler1.currentIndex + "" + tumbler2.currentIndex
                if(tempCode === lockCode) {
                    status = "Unlocked"
                    statusLabel.color = "green"
                }

                statusPopup.open();
            }
        }
    }
}
