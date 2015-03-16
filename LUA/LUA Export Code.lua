function print_r(tbl, depth, done, indent)
    print(indent .. "{")
    for key, value in pairs(tbl) do
        done = done or {}
        if type(value) == "table" then
		    
            print(indent .. "    [" .. key .. "] = (" .. tostring(value) .. ")")
            if depth > 0 and not done[value] then
               done[value] = true
               print_r(value, depth-1, done, indent .. "    ")
            end;
        elseif type(value) == "function" then
            print(indent .. "    [" .. key .. "] = (" .. tostring(value) .. ")")
        elseif type(value) == "string" then
            print(indent .. "    [" .. key .. "] = \"" .. tostring(value) .. "\"")
		elseif type(value) == "number" then
            print(indent .. "    [" .. key .. "] = " .. tostring(value))
        else
            print(indent .. "    [" .. key .. "] = <" .. tostring(value) .. ">")
        end;
    end; 
    print(indent .. "}")
end;

print_r(Wherigo, 5, {}, "");