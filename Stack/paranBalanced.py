from stack import Stack

def is_match(one, two ):
    if one == "(" and two == ")":
        return True
    elif one == "[" and two == "]":
        return True
    elif one == "{" and two == "}":
        return True
    else:
        return False

def param_balanced(param_String):

    c = Stack()
    is_balanced = True
    index = 0

    while index<len(param_String) and is_balanced:
        param = param_String[index]
        if param in "[{(":
            c.push(param)
            print(c.returnList())
        else:
            if c.isEmpty():
                is_balanced = False
            else:
                top = c.popoff()
                print(top)
                if not is_match(top, param):
                    is_balanced = False
        index += 1

    if c.isEmpty() and is_balanced:
        return True
    else:
        return False

print(param_balanced("{()}"))
