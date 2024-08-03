import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import com.company.cat 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Cat {
        id: cat
        name: "Kitty"
        onMeow: {
            noticeText.text = "MEOW"
            notice.open()
        }
        onNameChanged: {
            noticeText.text = `Name: ${cat.name}`
            //noticeText.text = "Name: " + cat.name
            notice.open()
        }
    }

    Popup {
        id: notice
        width: 200
        height: 50
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Label {
            id: noticeText
            anchors.centerIn: parent
            text: ""
        }
    }

    Column {
        id: column
        height: parent.height / 2
        width: parent.width / 3
        spacing: 20
        anchors.centerIn: parent

        Label {
            id: label
            text: "Name your cat:"
        }

        Rectangle {
            id: inputContainer
            width: parent.width
            height: 30
            border.color: "#111db7"

            TextInput {
                id: inputField
                height: parent.height
                width: (parent.width) -  (parent.width / 20)
                anchors.horizontalCenter: parent.horizontalCenter
                text: cat.name
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
            }
        }



        Button {
            id: changeBtn
            text: "Change"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                cat.name = inputField.text
            }
        }

        Button {
            id: callBtn
            text: "Call"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                cat.call()
            }
        }
    }
}
