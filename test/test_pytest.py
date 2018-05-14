#!/usr/bin/python
# -*- coding: utf-8 -*-

import pytest

@pytest.mark.parametrize(
    "x, y", [
        #("aaa", "bbb"),
        ("aaa", "aaa"),
        ("bbb", "bbb")
    ]
)
def test_1(x, y):
    print(10)
    assert x == y
