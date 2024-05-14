import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // This is a comment!!!

    /*
      Makes life super easy
      This is a multi-line comment ;)
      */

    Image {
        id: myImage
        source: "https://www.vectorlogo.zone/logos/qtio/qtio-ar21.png" // "QML Image: TLS initialization failed" error, not loading the image
        anchors.centerIn: parent
    }
}
