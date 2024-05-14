import QtQuick 2.12
import QtQuick.Window 2.12

// It's an Item
// There is no circle!

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myItem
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true

        border.color: "black"
        border.width: 5

        radius: width

        // Gradients are super easy!
        // https://doc.qt.io/qt-5/qml-qtquick-gradientstop.html

        gradient: Gradient {
            GradientStop {
                position: 0.0;
                color: "red"
            }
            GradientStop {
                position: 1.0;
                color: "blue"
            }
        }
    }
}
