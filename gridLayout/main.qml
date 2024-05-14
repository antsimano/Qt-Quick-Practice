import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        anchors.centerIn: parent
        spacing: 5
        rows: 3
        columns: 2

        MyShape {
            color: "red"
        }

        MyShape {
            color: "yellow"
        }

        MyShape {
            color: "green"
        }

        MyShape {
            color: "pink"
        }

        MyShape {
            color: "blue"
        }

        MyShape {
            color: "gray"
        }

        MyShape {
            color: "black"
        }

        MyShape {
            color: "purple"
        }

        MyShape {
            color: "teal"
        }

        MyShape {
            color: "orange"
        }
    }
}
