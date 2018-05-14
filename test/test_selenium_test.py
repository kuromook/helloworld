#!/usr/bin/python
# -*- coding: utf-8 -*-

import pytest
from selenium import webdriver
import chromedriver_binary 
from selenium.webdriver.chrome.options import Options

@pytest.mark.small
def test():
    options = Options()
    options.add_argument('--headless')
    browser = webdriver.Chrome(chrome_options=options)

    browser.get('http://0.0.0.0:8000')
    assert browser.find_element_by_tag_name('h1').text == 'Directory listing for /'
    lis = browser.find_elements_by_css_selector('li > a')
    assert lis[8].get_attribute('href') == 'http://0.0.0.0:8000/simpleserver.py'
