class Stack:
    def __init__(self):
        self.items = []


    def push(self, item):
        self.items.append(item)
    def popoff(self):
        self.items.pop()
    def isEmpty(self):
        if self.items == "[]":
            return True
        else:
            return False
    def returnList(self):
        return self.items
    def peek(self):
        if not self.isEmpty():
            return self.items[-1]


c = Stack()
c.push("A")
c.push("B")
c.push("C")
c.push("D")
c.push("E")
c.returnList()
jon = c.popoff()
