import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calc() {
        let num = sbWidth.value * sbHeight.value
        label.text = `${num} sqft`
    }

    Column {
        id: column
        width: parent.width / 3
        height: parent.height / 2
        anchors.centerIn: parent
        spacing: 10

        Label {
            id: label
            text: "0 sqtf"
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Grid {
            id: grid
            columns: 2
            rows: 2
            spacing: 10

            Label {
                id: lbl1
                text: "Width"
            }
            SpinBox {
                id: sbWidth
            }

            Label {
                id: lbl2
                text: "Height"
            }
            SpinBox {
                id: sbHeight
            }
        }
    }

    Connections {
        target: sbWidth
        onValueModified: {
            calc()
        }
    }

    Connections {
        target: sbHeight
        onValueModified: {
            calc()
        }
    }
}
