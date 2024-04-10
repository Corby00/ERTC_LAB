% read data and save in a list
data = serial_datalog('COM4' , {'3*single','3*single','2*single'}, 'baudrate', 115200)


% save data
%save('LabData',data)
