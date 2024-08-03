import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Popup {
        id: popup
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Label {
            id: lblStatus
            anchors.centerIn: parent
            text: ""
        }
    }

    Login {
        id: login
        width: parent.width / 2
        height: parent.height / 3
        anchors.centerIn: parent
        onLogin: {
            lblStatus.text = username
            console.log(`Username: ${username}, Password: ${password}`)
            popup.open()
        }
    }
}
