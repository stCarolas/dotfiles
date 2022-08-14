local M = {}

local function isMavenProject()
	return vim.fs.find('pom.xml')[1] ~= nil
end

local function runMavenVerify()
	vim.cmd('term mvn verify')
end

local function isTest()
	if (string.find(vim.api.nvim_buf_get_name(0), 'src/test') == nil) then
		return false
	end
	return true
end

local function openTestForClass()
	local path = string.gsub(vim.api.nvim_buf_get_name(0), 'src/main', 'src/test')
	path = string.gsub(path, [[(.*).java]], "%1Test.java",1)
	vim.cmd('edit ' .. path)
end

local function openClassForTest()
	local path = string.gsub(vim.api.nvim_buf_get_name(0),'src/test', 'src/main')
	path = string.gsub(path, [[Test.java]], ".java")
	vim.cmd('edit ' .. path)
end

M.switch = function()
	if (isTest()) then
		openClassForTest()
	else
		openTestForClass()
	end
end

M.mvnverify = function()
	if (isMavenProject()) then
		runMavenVerify()
	end
end

return M
