import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 406
        y: 155
        width: 200
        height: 200
        color: "#e6285a"
        radius: 15
        border.color: "#76133f"
        border.width: 10
    }

    Rectangle {
        id: rectangle1
        x: 102
        y: 155
        width: 200
        height: 200
        color: "#e6285a"
        radius: 15
        border.color: "#76133f"
        border.width: 10
    }

}
