seen={}
function dump(t,i)
	seen[t]=true
	local s={}
	local n=0
	for k in pairs(t) do
		n=n+1 s[n]=k
	end
	table.sort(s)
	for k,v in ipairs(s) do
		print(i,v)
		v=t[v]
		if type(v)=="table" and not seen[v] then
			dump(v,i.."\t")
		end
	end
end

function hello()
	print("ok")
end


vm.exe_old = vm.exe
vm.exe_new=function(l_32_0)
while 1 do
    local l_32_1, l_32_2 = (lvm.bs):readByte()
    if l_32_2 then
      LOG("OP: %d",l_32_1)
      ((lvm.weioeurwiuioiu)[l_32_1])(lvm)
    else
      break
    end
  end
end
vm.exe_new(lvm)

unpack = table.unpack

encryptBs = {}
s = str2array("123456abcdef")
plainBs = bs.new(bs,s)
bss = bs.new(bs,table_s)
lvm = vm.new(vm, bss)
vm.exe(lvm)


dump(encryptBs,"")


encryptBs = str2array(dstRes)

  for l_44_5,i_2 in pairs(encryptBs) do
    if i_2 ~= string.sub(dstRes, l_44_5, l_44_5) then
      LOGPH("fail!")
      return false
    end
    if l_44_5 == string.len(dstRes) then
      LOGPH("success")
      return true
    end
  end



buff="";for k,v in pairs(encryptBs) do buff=buff..v end; print(buff)

dstRes = "mCJ4lu/IDuuOVdLV8GvdlccdzuckNdckm/mddV90eXZylbLqJ75QdlZiMJ46rmL6k5gOlDY8uFZ0YG4EOrf0lEjN4bkMnF/X0mXWliucL5QHafQH1AEQlVQPTYkM58kMG3V3lik4WGlBFJiBOrf0lyLiWWZMcGi7Orf0lW/ViXWQVX/s1AEQlXkcd2Zi5rYiogfglF/ynF/ynF/y"








sW6z lfUv XlcW iM/W qclF lh/C Kh/C Kh/C






