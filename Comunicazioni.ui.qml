import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Bacheca")

    Canvas {
        id: canvas
        width: parent.width
        height: 280
        antialiasing: true

        property int radius: 6
        property int rectx: 60
        property int recty: 60
        property int rectWidth: width - 2*rectx
        property int rectHeight: 75
        property color strokeStyle:  Qt.darker(fillStyle, 1.4)
        property color fillStyle: "#ffffff" // purple
        property int lineWidth: 0
        property bool fill: true
        property bool stroke: true
        property real alpha: 1.0

        onPaint: {
            var ctx = getContext("2d");
            ctx.save();
            ctx.clearRect(0,0,canvas.width, canvas.height);
            ctx.strokeStyle = canvas.strokeStyle;
            ctx.lineWidth = canvas.lineWidth
            ctx.fillStyle = canvas.fillStyle
            ctx.globalAlpha = canvas.alpha
            ctx.beginPath();
            ctx.moveTo(rectx+radius,recty);                 // top side
            ctx.lineTo(rectx+rectWidth-radius,recty);
            // draw top right corner
            ctx.arcTo(rectx+rectWidth,recty,rectx+rectWidth,recty+radius,radius);
            ctx.lineTo(rectx+rectWidth,recty+rectHeight-radius);    // right side
            // draw bottom right corner
            ctx.arcTo(rectx+rectWidth,recty+rectHeight,rectx+rectWidth-radius,recty+rectHeight,radius);
            ctx.lineTo(rectx+radius-35,recty+rectHeight);              // bottom side
            // draw bottom left corner
            //ctx.arcTo(rectx,recty+rectHeight,rectx,recty+rectHeight-radius,radius);
            ctx.lineTo(rectx,recty+radius+rectHeight-25);                 // left side
            // draw top left corner
            ctx.arcTo(rectx,recty,rectx+radius,recty,radius);
            ctx.closePath();
            if (canvas.fill)
                ctx.fill();
            if (canvas.stroke)
                ctx.stroke();
            ctx.restore();
        }

        Text {
            x: parent.rectx + 20
            y: parent.recty + 15
            width: parent.rectWidth - 30
            text: qsTr("Orario continuato per tutto il mese")
            wrapMode: Label.WordWrap
            font.pixelSize: 14
        }

        Text {
            x: parent.rectx + parent.rectWidth - 80
            y: parent.recty + parent.rectHeight - 25
            width: parent.rectWidth - 30
            text: qsTr("03/06/2021")
            wrapMode: Label.WordWrap
            font.pixelSize: 11
            color: "#d9d9d9"
        }
    }
}
