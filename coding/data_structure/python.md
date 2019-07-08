1、python如何实现单例模式?请写出两种实现方式?
第一种方法:使用装饰器

def singleton(cls):
    instances = {}
    def wrapper(*args, **kwargs):
        if cls not in instances:
            instances[cls] = cls(*args, **kwargs)
        return instances[cls]
    return wrapper
    
    
@singleton
class Foo(object):
    pass
foo1 = Foo()
foo2 = Foo()
print(foo1 is foo2)  # True
第二种方法：使用基类 New 是真正创建实例对象的方法，所以重写基类的new 方法，以此保证创建对象的时候只生成一个实例

class Singleton(object):
    def __new__(cls, *args, **kwargs):
        if not hasattr(cls, '_instance'):
            cls._instance = super(Singleton, cls).__new__(cls, *args, **kwargs)
        return cls._instance
    
    
class Foo(Singleton):
    pass

foo1 = Foo()
foo2 = Foo()

print(foo1 is foo2)  # True
第三种方法：元类，元类是用于创建类对象的类，类对象创建实例对象时一定要调用call方法，因此在调用call时候保证始终只创建一个实例即可，type是python的元类

class Singleton(type):
    def __call__(cls, *args, **kwargs):
        if not hasattr(cls, '_instance'):
            cls._instance = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instance


# Python2
class Foo(object):
    __metaclass__ = Singleton

# Python3
class Foo(metaclass=Singleton):
    pass

foo1 = Foo()
foo2 = Foo()
print(foo1 is foo2)  # True
