import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("BRUNOISE (apró kocka): Az eljárással elsősorban hagymát, zellergyökeret, répát, esetleg póréhagymát szokás darabolni. A tisztított zöldségeket vékonyra szeleteljük, majd metéltre, végül apró kockákra vágjuk. Ügyelni kell rá, hogy szabályos méretű és alakú kockák legyenek.")
        font.pixelSize: Qt.application.font.pixelSize * 2
        wrapMode: Text.WordWrap
        padding: 10
    }

    Item {
        id: imageContainer
        width: 1100
        height: 700
        anchors.centerIn: parent
        Image {
            id: image
            width: 700
            height: 600
            source: "qrc:/images/brunoise.jpg"
            fillMode: Image.PreserveAspectFit
        }
    }
}
