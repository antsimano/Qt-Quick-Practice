import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: mrBean
        anchors.fill: parent
        source: "images/mrBean.jpg"
        fillMode: Image.PreserveAspectFit
    }
}
