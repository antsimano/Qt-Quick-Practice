
import QtQuick 2.0

Item {
    id: cbRoot
    width: 50
    height: 50

    property color color: "skyblue"
    property color colorHover: "azure"
    property color colorPressed: "royalblue"
    property alias title: cbTitle
    property alias area: cbMouseArea

    Rectangle {
        id: cbBody
        anchors.fill: parent
        color: cbRoot.color

        Text {
            id: cbTitle
            text: qsTr("")
            anchors.centerIn: parent
            color: "black"
            font.bold: true
            font.pointSize: 12
        }

        MouseArea {
            id: cbMouseArea
            anchors.fill: parent
            hoverEnabled: true
            onEntered: cbBody.color = cbRoot.colorHover
            onExited: cbBody.color = cbRoot.color
            onPressed: cbBody.color = cbRoot.colorPressed
            onReleased: cbBody.color = cbRoot.colorHover
        }
    }
}
