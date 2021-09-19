import QtQuick 2.9
import QtQuick.Controls 2.2
import QtLocation 5.9
import QtPositioning 5.9

Page {
    width: stackView.width
    height: stackView.height

    SwipeView {
        id: swipeView
        width: stackView.width
        height: stackView.height
        currentIndex: tabBar.currentIndex
        interactive: false

        Cerchia {
        }

        Promo {
        }

        Mappa {
        }

        Sfide {
        }

        Codice {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            Image {
                x: parent.width/2 - width/2
                y: parent.height/2 - height*2/3
                width: 30
                height: 30
                source: "qrc:/images/cerchia.png"
            }
            Label {
                x: parent.width/2 - width/2
                y: 33
                text: qsTr("Cerchia")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }

        TabButton {
            Image {
                x: parent.width/2 - width/2
                y: parent.height/2 - height*2/3
                width: 30
                height: 30
                source: "qrc:/images/promo.png"
            }
            Label {
                x: parent.width/2 - width/2
                y: 33
                text: qsTr("Promo")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }

        TabButton {
            Image {
                x: parent.width/2 - width/2
                y: parent.height/2 - height*2/3
                width: 30
                height: 30
                source: "qrc:/images/mappa.png"
            }
            Label {
                x: parent.width/2 - width/2
                y: 33
                text: qsTr("Mappa")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }

        TabButton {
            Image {
                x: parent.width/2 - width/2
                y: parent.height/2 - height*2/3
                width: 30
                height: 30
                source: "qrc:/images/sfide.png"
            }
            Label {
                x: parent.width/2 - width/2
                y: 33
                text: qsTr("Sfide")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }

        TabButton {
            Image {
                x: parent.width/2 - width/2
                y: parent.height/2 - height*2/3
                width: 30
                height: 30
                source: "qrc:/images/qr.png"
            }
            Label {
                x: parent.width/2 - width/2
                y: 33
                text: qsTr("Codice")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 10
            }
        }
    }

    Plugin {
        id: mapPlugin
        name: "osm" // "mapboxgl", "esri", ...
        // specify plugin parameters if necessary
        // PluginParameter {
        //     name:
        //     value:
        // }
    }
}
