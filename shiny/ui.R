# Define UI for application that draws a histogram
shinyUI(fluidPage(
  ## Title:
  titlePanel("Crimes in Mexico"),
  sidebarLayout(
    ## Sidebar panel
    sidebarPanel(
      h4("Crimes per 10000 inhabitants"),
      ##
      ## Select Law
      selectInput("law",
                  label = "Select Law",
                  choices = c("Common", "Federal")),      
      ##
      ## Select crime
      uiOutput("crime"),
      ##
      ## Select category
      uiOutput("category"),
      ##
      ## Select date
      dateRangeInput("dates", 
                     label = ("Date range"),
                     start = "1997-01-01",
                     end = "2014-03-01")),
    
    ##Main
    mainPanel(
      textOutput("text2"),
      tabsetPanel(tabPanel("Path", plotOutput("plot1")),
                  tabPanel("Differences by state", plotOutput("differences")),
                  tabPanel("Map", plotOutput("map1")),
                  tabPanel("Table", tableOutput("table1"))
      ) #tabset
    ) # main
  ) # sidebarLayout
))



# Output function  creates
# htmlOutput	raw HTML
# imageOutput	image
# plotOutput	plot
# tableOutput	table
# textOutput	text
# uiOutput	raw HTML
# verbatimTextOutput	text

# function  widget
# actionButton	Action Button
# checkboxGroupInput	A group of check boxes
# checkboxInput	A single check box
# dateInput	A calendar to aid date selection
# dateRangeInput	A pair of calendars for selecting a date range
# fileInput	A file upload control wizard
# helpText	Help text that can be added to an input form
# numericInput	A field to enter numbers
# radioButtons	A set of radio buttons
# selectInput	A box with choices to select from
# sliderInput	A slider bar
# submitButton	A submit button
# textInput	A field to enter text


# shiny function  HTML5 equivalent	creates
# p	<p>	A paragraph of text
# h1	<h1>	A first level header
# h2	<h2>	A second level header
# h3	<h3>	A third level header
# h4	<h4>	A fourth level header
# h5	<h5>	A fifth level header
# h6	<h6>	A sixth level header
# a	<a>	A hyper link
# br	<br>	A line break (e.g. a blank line)
# div	<div>	A division of text with a uniform style
# span	<span>	An in-line division of text with a uniform style
# pre	<pre>	Text 'as is' in a fixed width font
# code	<code>	A formatted block of code
# img	<img>	An image
# strong	<srtong>	Bold text
# em	<em>	Italicized text
# HTML	 	Directly passes a character string as HTML code
