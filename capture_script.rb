require 'selenium-webdriver'
require 'date'

driver = Selenium::WebDriver.for :firefox

url = "http://www.1101.com/home.html"
driver.navigate.to url

element = driver.find_element(:id, 'todays_darling')

puts element.text
driver.save_screenshot(Date.today.to_s + ' screen.png')

driver.quit # ブラウザ終了