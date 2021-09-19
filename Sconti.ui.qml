import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("I miei sconti")

    Image {
        y: 20
        width: parent.width
        height: width/2
        source: "qrc:/images/sconto.png"
    }

    Image {
        x: stackView.width/2 - width/2
        y: stackView.height - 120
        width: 70
        height: 70
        source: "qrc:/images/add.png"
        MouseArea {
            id: add
            anchors.fill: parent
        }
    }


    Connections {
        target: add
        onClicked: stackView.push("NuovoSconto.ui.qml")
    }
}
