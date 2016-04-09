// x = first  player
// o = second player

import QtQuick 2.0

Rectangle
{
    property bool game_over: false
    property bool first_player_turn: true
    property variant has_clicked: [false, false, false, false, false, false, false, false, false]



    function check_game_over()
    {
		if(img_o1.visible === true && img_o2.visible === true && img_o3.visible === true)
        {
            game_over = true

            txt_game_over.visible = true

        }
        else if(img_o1.visible && img_o5.visible && img_o9.visible)
        {
            game_over = true

            txt_game_over.visible = true

        }
        else if(img_o1.visible && img_o4.visible && img_o7.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_o2.visible && img_o5.visible && img_o8.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_o3.visible && img_o5.visible && img_o7.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_o3.visible && img_o6.visible && img_o9.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_o4.visible && img_o5.visible && img_o6.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_o7.visible && img_o8.visible && img_o9.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x1.visible && img_x2.visible && img_x3.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x1.visible && img_x5.visible && img_x9.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x1.visible && img_x4.visible && img_x7.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x2.visible && img_x5.visible && img_x8.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x3.visible && img_x5.visible && img_x7.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x3.visible && img_x6.visible && img_x9.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x4.visible && img_x5.visible && img_x6.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }
        else if(img_x7.visible && img_x8.visible && img_x9.visible)
        {
            txt_game_over.visible = true

            game_over = true

        }

    }

    id: big_wrapper
    anchors.fill: parent
    border.color: "white"



    Grid
    {
        id: grd_board
        height: parent.height * .75
        width: parent.width * .75
        anchors.horizontalCenter: big_wrapper.horizontalCenter
        anchors.verticalCenter: big_wrapper.verticalCenter
        columns: 3
        rows: 3



        Rectangle
        {
            id:top_left
            border.color: "white"
            height: parent.height/3
            width: parent.width/3
            Image
            {
                id: img_x1
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image
            {
                id: img_o1
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
			MouseArea
			{
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x1.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o1.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
				// if cell is not clicked and not game over
			    // Create scope curly braces
				// Toggle bool based off image 
				// Set x visible depending on player turn
				// Toggle player turn
				// Set has_clicked
				// Call check_game_over
			}
        }

        Rectangle
        {
            id: top_center
            border.color: "red"
            height: parent.height/3
            width: parent.width/3
            Image
            {
                id: img_x2
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image
            {
                id: img_o2
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x2.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o2.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id: top_right
            border.color: "white"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x3
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o3
                visible:false
               anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x3.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o3.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:mid_left
            border.color: "magenta"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x4
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o4
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x4.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o4.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:mid_center
            border.color: "gold"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x5
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o5
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x5.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o5.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:mid_right
            border.color: "green"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x6
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o6
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x6.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o6.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:bottom_left
            border.color: "white"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x7
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o7
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x7.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o7.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:bottom_middle
            border.color: "brown"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x8
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o8
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x8.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o8.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
        Rectangle{
            id:bottom_right
            border.color: "white"
            height: parent.height/3
            width: parent.width/3
            Image{
                id: img_x9
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: 100
                source: "../img/letter_x.png"
            }
            Image{
                id: img_o9
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                height: 75
                width: 75
                source: "../img/letter_o.png"
            }
            MouseArea
            {
                anchors.fill: parent
                property bool has_clicked

                onClicked:{
                    if(!has_clicked && !game_over)
                    {
                        if(first_player_turn)
                        {
                            img_x9.visible = true
                            first_player_turn = false
                        }
                        else
                        {
                            img_o9.visible = true
                            first_player_turn = true
                        }
                        has_clicked = true
                        check_game_over()
                    }
                }
                // if cell is not clicked and not game over
                // Create scope curly braces
                // Toggle bool based off image
                // Set x visible depending on player turn
                // Toggle player turn
                // Set has_clicked
                // Call check_game_over
            }
        }
    }

    Rectangle
    {
        id: rect_left
        anchors.right: grd_board.left
        anchors.rightMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_right
        anchors.left: grd_board.right
        anchors.leftMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_top
        anchors.bottom: grd_board.top
        anchors.bottomMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_bottom
        anchors.top: grd_board.bottom
        anchors.topMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }
    Text
    {
        id: txt_game_over
        visible: false
        font.family: "Arial"
        font.pointSize: 72
        color: "Red"
        text: "Game Over"


        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
