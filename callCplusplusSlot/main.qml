import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Column  {
        id: column
        width: 200
        height: 168
        anchors.verticalCenterOffset: 10
        anchors.centerIn: parent
        spacing: 50

        Label {
            id: label
            text: "Call a C++ Slot"
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            text: "Click Me"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                //Call a slot
                testing.bark()

                //Cannot call a non-slot - must be a property
                let num = testing.number()
                print(num)
            }
        }
    }
}
