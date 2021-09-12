import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Particles 2.0

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
}
