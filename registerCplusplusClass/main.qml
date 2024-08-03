import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//Import our class / type
import com.company.test 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Test {
        id: test
        onStatus: lblStatus.text = data
    }

    Column {
        id: column
        width: 100
        height: 90
        anchors.centerIn: parent
        spacing: 10

        Label {
            id: label
            text: "Register a C++ Class"
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: lblStatus
            text: "Status"
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 25
        }

        Button {
            id: button
            text: "Click Me"
            onClicked: {
                let num = Math.round(Math.random() * 100)
                test.work(num)
            }
        }
    }
}
