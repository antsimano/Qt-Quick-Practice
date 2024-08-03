import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Geine {
        id: geineComp
        width: parent.width / 2
        height: parent.height / 3
        anchors.centerIn: parent
    }
}
