import openpyxl

vk = openpyxl.load_workbook("daten.xlsx")

print(vk.sheetnames)
print("Active Sheet is " +  vk.active.title)

