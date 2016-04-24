import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.2

ApplicationWindow {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Magic 8 ball")

    Rectangle
    {
        id: big_wrapper
        anchors.fill: parent



        Text
        {
            id: txt_question
            text: Cursed_8_ball.get_question();
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24
            font.family: "BELLABOO"
            color: "purple"
            anchors.bottomMargin: 20
        }

        TextInput
        {
            id: txtin_input
            anchors.topMargin: 20
            anchors.bottom: rect_outer_ball.top
            anchors.horizontalCenter: big_wrapper.horizontalCenter
            focus: spg_animation_y.running ? false : true
            visible: spg_animation_y.running ? false : true
            text: "Enter question here..."
            font.pointSize: 24
            height: 50
            width: 50
            color: "orange"

            onAccepted:
            {
                Cursed_8_ball.set_question(txtin_input.displayText);
                txt_question.text = Cursed_8_ball.get_question();
                Cursed_8_ball.set_draggable(true);
                txtin_input.remove(0, txtin_input.length)

            }
        }
        Rectangle
        {
            id: rect_outer_ball
            height: 500
            width: 500

            //            anchors.horizontalCenter: big_wrapper.horizontalCenter
            //            anchors.verticalCenter: big_wrapper.verticalCenter
            x: parent.width/2 - width/2;
            y: parent.height/2 - height/2;
            border.color: "white"
            color: "black"
            radius: width/2;

            Behavior on x
            {
                SpringAnimation
                {
                    id: spg_animation_x
                    spring: 4.0
                    damping: .5
                    epsilon: 0.5
                    mass: 10
                }
            }

            Behavior on y
            {
                SpringAnimation
                {
                    id: spg_animation_y
                    spring: 4.0
                    damping: .5
                    epsilon: 0.5
                    mass: 10
                }
            }

            Rectangle
            {
                id: rect_inner_ball
                height: parent.height * .60
                width: parent.width * .60
                anchors.horizontalCenter: rect_outer_ball.horizontalCenter;
                border.color: "purple"
                color: "white"
                radius: width/2;

                Text
                {
                    id: txt_saying
                    anchors.fill: parent
                    anchors.topMargin: 150
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.Wrap
                    font.family: "BELLABOO"
                    font.pointSize: 18


                    text: spg_animation_y.running ? "" : Cursed_8_ball.get_saying(Math.floor((Math.random() * (20 - 0)) + 0))
                }

                Rectangle
                {
                    id: rect_wave_wrapper
                    height: parent.height + border.width
                    width: parent.width + border.width
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "transparent"
                    border.color: "black"
                    border.width: 55
                    radius: width/2
                    z: 2
                }

                AnimatedImage
                {
                    id: gif_waves
                    source: "../img/waves.gif"
                    height: parent.height - rect_wave_wrapper.border.width
                    width: parent.width - rect_wave_wrapper.border.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    visible: spg_animation_y.running ? true : false
                }


            }

            Item
            {
                id: undrag
                visible: false
            }

            MouseArea
            {
                id: ma_mouse_area
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: cursorShape = Qt.OpenHandCursor


                onPressed:
                {
                    cursorShape = Qt.ClosedHandCursor

                    if(Cursed_8_ball.get_is_draggable()){
                        drag.target = rect_outer_ball


                    }
                }

                onReleased:
                {
                    drag.target = undrag
                    cursorShape = Qt.OpenHandCursor
                    rect_outer_ball.x = big_wrapper.width/2 - rect_outer_ball.width/2;
                    rect_outer_ball.y = big_wrapper.height/2 - rect_outer_ball.height/2;

                    txtin_input.text = "Enter question here..."

                }



            }
        }

    }


}
