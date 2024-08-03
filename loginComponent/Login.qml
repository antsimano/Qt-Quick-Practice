import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    signal login(string username, string password)
    width: 240
    height: 200
    anchors.centerIn: parent

    Column {
        id: column
        anchors.fill: parent
        spacing: 10

        Label {
            id: lblUsername
            text: "Username"
        }

        TextField {
            id: txtUsername
            text: ""
            width: parent.width
        }

        Label {
            id: lblPassword
            text: "Password"
        }

        TextField {
            id: txtPassword
            text: ""
            echoMode: TextInput.Password
            width: parent.width
        }

        Button {
            id: button
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Submit"
        }
    }

    Connections {
        target: button
        onClicked: login(txtUsername.text, txtPassword.text)
    }
}


