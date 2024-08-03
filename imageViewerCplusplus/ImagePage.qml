import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Item {
    property alias source: image.source
    Page {
        anchors.fill: parent
        Image {
            id: image
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/images/nightForest.jpg"
        }
    }
}
