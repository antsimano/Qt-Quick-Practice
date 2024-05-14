import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //javascript???
    property var middle: height / 2

    Image {
        id: localImage
        source: "qrc:/images/smiley.jpg"

        height: 300
        fillMode: Image.PreserveAspectFit

        x: 300
        y: middle - 100
    }

    Image {
        id: remoteImage
        source: ""

        height: 100
        fillMode: Image.PreserveAspectFit

        x: 100
        y: middle

        onProgressChanged: console.log(remoteImage.progress)
        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")
    }
}
