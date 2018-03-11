# Oh, hey there! 
# 
# I'm still learning how to use framer, so feel free to change anything here =D


## Defining global variables to be used later

## Header size to be used to inset the content in the browser
headerSize = headerBg.height

animSpeed = time: 0.1

scroll = new ScrollComponent
	scrollHorizontal: false
	y: headerSize - 30
	height: Screen.height - 147
	width: Screen.width
	contentInset: 
		top: 30

webPage.parent=scroll.content


## Adress bar, header and bottom bar animation
scroll.onScroll ->
	if scroll.scrollY > 0
		headerBg.animate
			y: -30
			options: 
				animSpeed
		adressBar.animate
			scale: 0.8
			opacity: 0
			options: 
				animSpeed
		siteName.animate
			y: 38
			scale: 0.79
			options: 
				animSpeed
		scroll.animate
			height : Screen.height
			options: 
				animSpeed
		bottomBar.animate
			y:810
			options:
				animSpeed
	if scroll.scrollY < 40
		headerBg.animate
			y: 0
			options: 
				animSpeed
		adressBar.animate
			scale: 1
			opacity: 100
			options: 
				animSpeed
			y: 50
		siteName.animate
			y: 59
			scale: 1
			options: 
				animSpeed
	if scroll.scrollY < 0
		scroll.animate
			height : Screen.height - 147
			options: 
				animSpeed
		bottomBar.animate
			y:729
			options:
				animSpeed

