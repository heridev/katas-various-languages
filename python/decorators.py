"""
It is a powerful and uself tool that allows you to modify the behavior of a function of a class. They are often used for adding functionality to existing code in a modular and readable way.

A decorator is a function that takes another function as an argument, extends the behavior of the latter function without explicitly modifying it, and returns a new function. It is a form of metaprogramming, as a part of the program tries to modify another part of the program at compile time.
"""


def my_decorator(func):
    def wrapper():
        print("before executing the function")
        func()
        print("after executing the function..")
    return wrapper


@my_decorator
def say_hello():
    print("this is say_hello()")


say_hello()
