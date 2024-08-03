import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("SALPICON (1 x 1 x 1 mm kocka): Általánosabban a salpicon kifejezés utalhat kockákra vágott vagy ledarált alapanyokból készült, fehér vagy barna mártással, vagy akár majonézzel, vinaigrette-el megkötött ételre is. A kapott keveréket különböző ételek töltelékeként használják fel, vagy szendvicsekre kenik.")
        font.pixelSize: Qt.application.font.pixelSize * 2
        wrapMode: Text.WordWrap
        padding: 10
    }

    Image {
        id: image
        width: 700
        height: 600
        source: "qrc:/images/salpicon.jpg"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
