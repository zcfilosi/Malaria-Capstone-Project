% need to display temperatures for all 4 monkeys
% RIh16
% RTe16
% RCl16
% RUf16


x = '24-Oct-2016 11:58:17'
t = datenum(x)


[temp1, date1] = xlsread('E06TemperatureAverages.xlsx','RIh16','A:B' )
newdate1 = datenum(date1)

[temp2, date2]=xlsread('E06TemperatureAverages.xlsx','RTe16','A:B' )
newdate2 = datenum(date2)

[temp3, date3]=xlsread('E06TemperatureAverages.xlsx','RCl15','A:B' )
newdate3 = datenum(date3)

[temp4, date4]=xlsread('E06TemperatureAverages.xlsx','RUf16','A:B' )
newdate4 = datenum(date4)



xq1 = min(newdate1):max(newdate1)
vq1 = interp1(newdate1, temp1, xq1)

xq2 = min(newdate2):max(newdate2)
vq2 = interp1(newdate2, temp2, xq2)

xq3 = min(newdate3):max(newdate3)
vq3 = interp1(newdate3, temp3, xq1)

xq4 = min(newdate4):max(newdate4)
vq4 = interp1(newdate4, temp4, xq4)




[temp5, date5]=xlsread('E07BTemperatureAverages.xlsx','12C136','A:B' )
newdate5 = datenum(date5)

[temp6, date6]=xlsread('E07BTemperatureAverages.xlsx','12C53','A:B' )
newdate6 = datenum(date6)

[temp7, date7]=xlsread('E07BTemperatureAverages.xlsx','H12C59','A:B' )
newdate7 = datenum(date7)

[temp8, date8]=xlsread('E07BTemperatureAverages.xlsx','H12C8','A:B' )
newdate8 = datenum(date8)

[temp9, date9]=xlsread('E07BTemperatureAverages.xlsx','12C44','A:B' )
newdate9 = datenum(date9)

[temp10, date10]=xlsread('E07BTemperatureAverages.xlsx','11C131','A:B' )
newdate10 = datenum(date10)

[temp11, date11]=xlsread('E07BTemperatureAverages.xlsx','11C166','A:B' )
newdate11 = datenum(date11)








%plot(newdate5, temp5,newdate6, temp6,newdate7, temp7,newdate8, temp8,newdate9, temp9,newdate10, temp10,newdate11, temp11)
%plot(xq1,vq1,xq2,vq2,xq3,vq3,xq4, vq4 )
vq1 = fft(vq1)
plot(xq1,vq1)
%plot(newdate1, temp1, newdate2, temp2, newdate3, temp3, newdate4, temp4)
%plot(xq1,vq1,xq1,vq2,xq1,vq3,xq1, vq4 )
%hold
%plot(newdate1, temp1, newdate2, temp2, newdate3, temp3, newdate4, temp4)
xlabel('Date (in datenum format)') 
ylabel('Measured Temperature') 

