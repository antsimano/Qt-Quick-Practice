import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        color: "#920595"
        text: qsTr("You are on Page 2.")
        font.pointSize: 15
        font.bold: true
        anchors.centerIn: parent
    }
}
