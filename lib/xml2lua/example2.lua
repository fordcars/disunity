#!/usr/bin/env lua

---Shows how to parse more than one XML file in the same application.
--@author Manoel Campos da Silva Filho - http://manoelcampos.com

local xml2lua = require("xml2lua")

--Uses a handler that converts the XML to a Lua table
local handler = require("xmlhandler.tree")

-----------------------  people.xml parse code -----------------------
print("people.xml")
local peopleHandler = handler:new()
local peopleParser = xml2lua.parser(peopleHandler)
peopleParser:parse(xml2lua.loadFile("people.xml"))
xml2lua.printable(peopleHandler.root)

-----------------------  books.xml parse code -----------------------
print("\n\nbooks.xml")
local booksHandler = handler:new()
local booksParser = xml2lua.parser(booksHandler)
booksParser:parse(xml2lua.loadFile("books.xml"))
xml2lua.printable(booksHandler.root)

