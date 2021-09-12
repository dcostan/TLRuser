import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: stackView.width
    height: stackView.height

    header: Label {
        text: qsTr("PROMOZIONI")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 30
    }

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 600
            width: parent.width

            Rectangle {
                id: promo1
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 10
                x: swipeView.width/4 - width/2

                Image {
                    x: parent.width/2 - width/2
                    y: 25
                    width: 90
                    height: 90
                    source: "qrc:/images/barlogo.png"
                }

                Text {
                    x: 20
                    y: 135
                    width: parent.width - 30
                    text: qsTr("Caffè e brioches a 2 euro")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 03/06/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

            }

            DropShadow {
                anchors.fill: promo1
                cached: true
                horizontalOffset: 3
                verticalOffset: 3
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo1
            }

            Rectangle {
                id: promo2
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 10
                x: swipeView.width*3/4 - width/2

                Image {
                    x: parent.width/2 - width/2
                    y: 25
                    width: 90
                    height: 90
                    source: "qrc:/images/barlogo.png"
                }

                Text {
                    x: 20
                    y: 135
                    width: parent.width - 30
                    text: qsTr("Caffè e brioches a 2 euro")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 03/06/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

            }

            DropShadow {
                anchors.fill: promo2
                cached: true
                horizontalOffset: 3
                verticalOffset: 3
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo2
            }

            Rectangle {
                id: promo3
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 270
                x: swipeView.width/4 - width/2

                Image {
                    x: parent.width/2 - width/2
                    y: 25
                    width: 90
                    height: 90
                    source: "qrc:/images/barlogo.png"
                }

                Text {
                    x: 20
                    y: 135
                    width: parent.width - 30
                    text: qsTr("Caffè e brioches a 2 euro")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 03/06/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

            }

            DropShadow {
                anchors.fill: promo3
                cached: true
                horizontalOffset: 3
                verticalOffset: 3
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo3
            }
        }
    }
}
