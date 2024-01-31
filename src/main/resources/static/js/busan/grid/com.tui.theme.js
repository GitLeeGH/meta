/*********************************************************
 * TUI.GRID Theme
 ******************************************************** */
tui.Grid.applyTheme('default', {
	selection: {
        background: "#E6F2FE",
        border: '#efefef'
    },
	cell: {
		normal: {
            background: "#F5F5F5",
            border: "#efefef",
            text: "#222",
            showVerticalBorder: !0,
            showHorizontalBorder: !0
        },
		header: {
            background: "#005EBC",
            border: "#efefef",
            text: "#fff",
            showVerticalBorder: !0,
            showHorizontalBorder: !0
        },
        rowHeader: {
            background: "#005EBC",
            border: "#efefef",
            text: "#fff",
            showVerticalBorder: !0,
            showHorizontalBorder: !0
        },
        selectedHeader: {
            background: "#005EBC",
            border: "#efefef"
        },
        selectedRowHeader: {
            background: "none"
        },
        focused: {
            border: "none"
        },
        focusedInactive: {
            border: "none"
        }, 
        currentRow: {
        	background: "#E6F2FE"
        }
	},
    row: {
    	hover: {
        	background: "#E6F2FE"
    	},
    	odd : {
    		background: "#ffffff"
    	},
    	even : {
    		background: "#ffffff"
    	}
    }
});