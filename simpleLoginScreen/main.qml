import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string username: "annamaria"
    property string password: "password"
    property string status: "Failed"

    Popup {
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        width: 200
        height: 300
        modal: true
        focus: true

        Label {
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }
    }

    Column {
        id: column
        x: 185
        y: 139
        width: 285
        height: 155
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Grid {
            id: grid
            width: 300
            height: 100
            spacing: 10
            columns: 2

            Label {
                id: label
                text: qsTr("Username")
            }

            TextField {
                id: txtUsername
                text: qsTr("")
            }

            Label {
                id: label1
                text: qsTr("password")
            }

            TextField {
                id: txtPassword
                text: ""
                echoMode: TextInput.Password
            }
        }

        Button {
            id: button
            text: qsTr("Login")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if(username === txtUsername.text && password === txtPassword.text) status = "Hello!"
                statusPopup.open()
            }
        }
    }
}
