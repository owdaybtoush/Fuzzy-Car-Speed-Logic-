function varargout = fuzzzyy(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzzyy_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzzyy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function fuzzzyy_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = fuzzzyy_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
x  = str2num(get(handles.edit5,'String'));
set([handles.edit1, handles.edit2, handles.edit3,handles.edit4 ,handles.edit10,handles.edit11,handles.edit12], 'String','');

% frezing
if (x>= 0 &&  x<= 30)
set(handles. edit1,'String',1)
elseif (x> 30 &&  x< 50)
        y=((x-30)*(-0.05))+1;
        set(handles.edit1,'String',y)
end
%     cool
if (x== 50)
set(handles.edit2,'String',1)
elseif (x> 30 &&  x< 50)
        y=((x-50)*(0.05))+1;
        set(handles.edit2,'String',y)
        
        elseif (x> 50 &&  x< 70)
        y=((x-50)*(-0.05))+1;
        set(handles.edit2,'String',y)
end
% warm
if (x== 70)
set(handles.edit3,'String',1)
elseif (x> 50 &&  x< 70)
        y=((x-70)*(0.05))+1;
        set(handles.edit3,'String',y)
        elseif (x> 70 &&  x< 90)
        y=((x-70)*(-0.05))+1;
        set(handles.edit3,'String',y)
        
end
% hot
if (x>= 90 &&  x<= 110)
set(handles.edit4,'String',1)
elseif (x> 70 &&  x< 90)
        y=((x-90)*(0.05))+1;
        set(handles.edit4,'String',y)
end
%         cover
e  = str2num(get(handles.edit13,'String'));
if (e>= 0 && e<= 20)
set(handles. edit10,'String',1)
elseif (e> 20 &&  e< 50)
        z=((e-20)*(-0.033))+1;
        set(handles.edit10,'String',z)
        
end

if (e== 50)
set(handles.edit11,'String',1)
elseif (e> 20 &&  e< 50)
        z=((e-50)*(0.033))+1;
        set(handles.edit11,'String',z)
        
        elseif (e> 50 &&  e< 80)
        z=((e-50)*(-0.033))+1;
        set(handles.edit11,'String',z)
end
        if (e>= 80 &&  e<= 100)
set(handles.edit12,'String',1)
        end
if (e> 50 &&  e< 80)
        z=((e-80)*(0.033))+1;
        set(handles.edit12,'String',z)
      
end

function edit5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)

function edit12_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit13_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

% cover

function popupmenu1_Callback(hObject, eventdata, handles)

contenido=get(hObject,'string');
a=get(hObject,'value');
color=contenido(a);
switch cell2mat(color)
    case'TEMP'
        msgbox('owday')
        eec='';
    case'Frezing'
        eec=str2num(get(handles.edit1,'String'));

    case'Cool'
                eec=str2num(get(handles.edit2,'String'));

    case 'Warm'
                eec=str2num(get(handles.edit3,'String'));

    case'Hot'
        eec=str2num(get(handles.edit4,'String'));

%  contenr=cellstr(get(hObject,'string'));
%  pop_choice=contenr(get(hObject,'value'));
% %  pop_choice
%  if (strcmp(pop_choice,'Frezing'))
% fasttemp  = str2num(get(handles.edit1,'String'));
%    set(handles.popupmenu1,'strings',fasttemp);
% %           msgbox(fasttemp1);
%           
%  elseif(strcmp(pop_choice,'Cool'))
%      fasttemp2  = str2num(get(handles.edit2,'String'));
% %     set(handles.popupmenu1,'String',fasttemp2)
%           msgbox('cool');
%           
%  elseif(strcmp(pop_choice,'Warm'))  
%      fasttemp3  = str2num(get(handles.edit3,'String'));
% %      set(handles.popupmenu1,'String',fasttemp3)
%           msgbox('warm');
%           
%  elseif(strcmp(pop_choice,'Hot'))
%      fasttemp4 = str2num(get(handles.edit4,'String'));
% %      set(handles.popupmenu1,'String',fasttemp4)
%           msgbox('Hot');
end
                  set(handles.salida,'string',eec);


function popupmenu1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)

function radiobutton2_Callback(hObject, eventdata, handles)

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)


function popupmenu2_Callback(hObject, eventdata, handles)
contenido=get(hObject,'string');
a=get(hObject,'value');
color=contenido(a);
switch cell2mat(color)
    case'COVER'
        msgbox('owday ISSA')
        eec='';
    case'Sunny'
        eec=str2num(get(handles.edit10,'String'));

    case'Party'
                eec=str2num(get(handles.edit11,'String'));

    case 'Over Cost'
                eec=str2num(get(handles.edit12,'String'));

 
end
                  set(handles.salida1,'string',eec);

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit14_Callback(hObject, eventdata, handles)


function edit14_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
contenido=get(hObject,'string');
a=get(hObject,'value');
color=contenido(a);
switch cell2mat(color)
    case'TEMP'
        msgbox('owday')
        eec='';
    case'Frezing'
        eec=str2num(get(handles.edit1,'String'));

    case'Cool'
                eec=str2num(get(handles.edit2,'String'));

    case 'Warm'
                eec=str2num(get(handles.edit3,'String'));

    case'Hot'
        eec=str2num(get(handles.edit4,'String'));


end
                  set(handles.text15,'string',eec);


function popupmenu3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)

contenido=get(hObject,'string');
a=get(hObject,'value');
color=contenido(a);
switch cell2mat(color)
    case'COVER'
        msgbox('owday ISSA')
        eec='';
    case'Sunny'
        eec=str2num(get(handles.edit10,'String'));

    case'Party'
                eec=str2num(get(handles.edit11,'String'));

    case 'Over Cost'
                eec=str2num(get(handles.edit12,'String'));


end
                  set(handles.text16,'string',eec)

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)


function edit15_CreateFcn(hObject, eventdata, handles)
%       See ISPC andd COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit16_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
   fast  = str2num(get(handles.edit14,'string'));
      slow  = str2num(get(handles.edit15,'string'));

mph=((fast*75)+(slow*25))/(fast+slow);
    set(handles.edit16,'string',mph);


% --- Executes on button press in orr.
function orr_Callback(hObject, eventdata, handles)



function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
%     set(handles.edit14,'string','');

 popfast  = str2num(get(handles.salida,'string'));
  popfast1  =str2num( get(handles.salida1,'string'));
  
if hObject==handles.andd

 dd=min(popfast,popfast1);
    set(handles.edit14,'string',dd);

  
elseif hObject==handles.orr

    d=max(popfast,popfast1);
    set(handles.edit14,'string',d);
    


end


% --- Executes on button press in andd.
function andd_Callback(hObject, eventdata, handles)

function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
popfast  = str2num(get(handles.text15,'string'));
  popfast1  =str2num( get(handles.text16,'string'));
  
if hObject==handles.radiobutton6

 dd=min(popfast,popfast1);
    set(handles.edit15,'string',dd);

  
elseif hObject==handles.radiobutton7

    d=max(popfast,popfast1);
    set(handles.edit15,'string',d);
end
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
