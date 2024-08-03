import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

    Label {
        color: "#dd0f8ae7"
        text: qsTr("You are on Page 1.")
        font.pointSize: 15
        font.bold: true
        anchors.centerIn: parent
    }
}
