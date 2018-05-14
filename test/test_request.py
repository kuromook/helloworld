#!/usr/bin/python
# -*- coding: utf-8 -*-

import pytest
import requests
from bs4 import BeautifulSoup

@pytest.mark.small
def test():
    session = requests.session()

    url='http://0.0.0.0:8000'
    res = session.get(url)
    print('STATUS : {}'.format(res.status_code))
    print('HEADERS {}'.format(res.headers) )
    soup = BeautifulSoup(res.text,"html.parser")
    print('TITLE : {}'.format(soup.title.string))
    assert soup.title.string == 'Directory listing for /'