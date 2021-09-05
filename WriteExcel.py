import openpyxl

vk = openpyxl.Workbook()
sh = vk.active
sh.title="ivoclar"
print(sh.title)

sh['I4'].value="https://www.ivoclarvivadent.com/"
vk.save('IvoDaten.xlsx')

vk.create_sheet(title="IVOTesting")
sh1= vk['IVOTesting']
sh1['A3']="+43-233234434"
vk.save('IvoDaten2.xlsx')

#vk.remove_sheet(vk['ivoclar'])