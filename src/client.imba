import './styles'
import './views/item-list'





tag App
	prop carriers = {
		"011": "cellcard"
		"012": "cellcard"
		"017": "cellcard"
		"061": "cellcard"
		"076": "cellcard"
		"077": "cellcard"
		"078": "cellcard"
		"085": "cellcard"
		"089": "cellcard"
		"092": "cellcard"
		"095": "cellcard"
		"099": "cellcard"
		"11": "cellcard"
		"12": "cellcard"
		"17": "cellcard"
		"61": "cellcard"
		"76": "cellcard"
		"77": "cellcard"
		"78": "cellcard"
		"85": "cellcard"
		"89": "cellcard"
		"92": "cellcard"
		"95": "cellcard"
		"99": "cellcard"
		"010": "smart"
		"015": "smart"
		"016": "smart"
		"069": "smart"
		"070": "smart"
		"081": "smart"
		"086": "smart"
		"087": "smart"
		"093": "smart"
		"096": "smart"
		"098": "smart"
		"10": "smart"
		"15": "smart"
		"16": "smart"
		"69": "smart"
		"70": "smart"
		"81": "smart"
		"86": "smart"
		"87": "smart"
		"93": "smart"
		"96": "smart"
		"98": "smart"
		"031": "metfone"
		"060": "metfone"
		"066": "metfone"
		"067": "metfone"
		"068": "metfone"
		"071": "metfone"
		"088": "metfone"
		"090": "metfone"
		"097": "metfone"
		"31": "metfone"
		"60": "metfone"
		"66": "metfone"
		"67": "metfone"
		"68": "metfone"
		"71": "metfone"
		"88": "metfone"
		"90": "metfone"
		"97": "metfone"
	}
	prop cellnum = ""
	prop stripped
	prop three
	prop two
	css .cellcard
		c:orange5
	css .metfone
		c:red6
	css .smart
		c:green5
	def render
		<self[d:vflex jc:center ai:stretch]>
			<body>
				<div[ta:center h:100px d:flex fld:column jc:center ai:center]>
					stripped = cellnum.replace(/\D/g, "")
					three = stripped.substring(0,3)
					two = stripped.substring(0,2)

					if carriers["{three}"] isnt undefined
						<h2.{carriers["{three}"]}> carriers["{three}"]
					elif carriers["{two}"] isnt undefined
						<h2.{carriers["{three}"]}> carriers["{two}"]
					else
						<h2[c:red5]> "no match"
				<div[ta:center w:100% py:4 c:gray4]> "Cambodia Carrier Identifier"
				<div [
					w:200px
					bg:gray3
					d:hflex
					py:4
					rd:full
					jc:center
					mx:auto
				]>
					<input[ta:center] bind=cellnum placeholder="type number here 🇰🇭">

				

imba.mount <App>
