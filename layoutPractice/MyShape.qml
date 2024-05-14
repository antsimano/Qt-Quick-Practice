import QtQuick 2.0

Rectangle {
    color: "lightblue"
    width: 80
    height: 80

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onClicked: {
            console.log("Clicked: " + parent.id)
        }

        onEntered: parent.color = "azure"
        onExited: parent.color = "lightblue"
    }
}
