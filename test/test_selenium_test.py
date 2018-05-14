#!/usr/bin/python
# -*- coding: utf-8 -*-

import pytest
from selenium import webdriver

@pytest.mark.small
def test():
    browser = webdriver.Firefox()
    browser.get('http://0.0.0.0:8000')
    assert browser.find_element_by_tag_name('h1').text == 'Directory listing for /'
    lis = browser.find_elements_by_css_selector('li > a')
    assert lis[8].get_attribute('href') == 'http://0.0.0.0:8000/simpleserver.py'
