function love.load()
	key = ""
end		

function love.update()

end

function love.keypressed(k)
	if k == "escape" then
		os.exit()
	else
		key = tostring(k)
	end
end

function love.draw()
    local major, minor, revision, codename = love.getVersion()
    local str = string.format("Version %d.%d.%d - %s", major, minor, revision, codename)
    love.graphics.print(str, 20, 20)
    love.graphics.print(key, 20, 60)
end