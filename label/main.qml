import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        id: label
        x: 98
        y: 92
        text: qsTr("This is a label")
    }

    Label {
        id: label1
        x: 98
        y: 141
        width: 131
        height: 69
        color: "#b60e0e"
        text: qsTr("This is a long label title - probably the longest ever")
        wrapMode: Text.WordWrap
        font.underline: true
        font.italic: true
        font.bold: true
        styleColor: "#0a0a0a"
    }

    Label {
        id: label2
        x: 98
        y: 232
        text: qsTr("This is <font color='blue'><b>H<i>T</i>ML</b>!!!</font>")
        font.pointSize: 45
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/
