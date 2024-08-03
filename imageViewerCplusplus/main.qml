import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

import com.company.dirhelper 1.0

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tabs")

    DirHelper {
        id: dirhelper
        //path: ":/images/images"
        path: "images/images"
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        Component.onCompleted: {
            //let files = dirhelper.files
            const images = ["qrc:/images/images/brookForest.jpg", "qrc:/images/images/fantasyLandscape.jpg", "qrc:/images/images/nightForest.jpg"]
            let files = images

            for(let i = 0; i < files.length; i++) {
                console.log(`Loading: ${files[i]}`)
                let component = Qt.createComponent("ImagePage.qml")
                let page = component.createObject(swipeView, {"width": 640, "height": 480})
                //page.source = `file:/${files[i]}`
                page.source = files[i];
            }
        }
    }
}
