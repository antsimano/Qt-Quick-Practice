import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("Julienne (vékony metélt)")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: image
        width: 700
        height: 600
        source: "qrc:/images/julienne.jpg"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
