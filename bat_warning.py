#!/usr/bin/python
from kivy.app import runTouchApp #App
from kivy.lang import Builder

_kv_code = """
Label:
	canvas.before:
		Color:
			rgba:1,0,0,1
		Rectangle:
			pos: root.pos
			size: root.size
	text: 'You need to CHARGE NOW!!'
"""

if __name__ == '__main__':
	runTouchApp(Builder.load_string(_kv_code))
