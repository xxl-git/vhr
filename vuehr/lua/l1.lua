local z = 20

local function maximum (a)
    -- 如果不是table类型，返回nil
    if(type(a) ~= 'table') then
        return nil
    end
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))

local table1 = {}
table1.name='zs'
table1.addr='nb'

-- 演示pairs，遍历table，返回key和value
local function pairsfun()
    for index,val in pairs(table1) do
        print(index,val)
    end
end

pairsfun()

-- 演示ipairs，遍历table，返回index和value
local table2 = {}
table2[1] = 'zs'
table2[2] = 'ls'
table2[3] = 'ww'

local function ipairsfun()
    for i,val in ipairs(table2) do
        print(i,val)
    end
end

ipairsfun()

-- 演示lua表，lua表是散列构造，不保证顺序
local myTable = {a = 1, b = 2, c = 3}
for k, v in pairs(myTable) do
    print(k, v)
end

print(z)