function varargout = cpm_gui(varargin)
% CPM_GUI MATLAB code for cpm_gui.fig
%      CPM_GUI, by itself, creates a new CPM_GUI or raises the existing
%      singleton*.
%
%      H = CPM_GUI returns the handle to a new CPM_GUI or the handle to
%      the existing singleton*.
%
%      CPM_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CPM_GUI.M with the given input arguments.
%
%      CPM_GUI('Property','Value',...) creates a new CPM_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cpm_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cpm_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cpm_gui

% Last Modified by GUIDE v2.5 14-Nov-2018 00:26:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cpm_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @cpm_gui_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before cpm_gui is made visible.
function cpm_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cpm_gui (see VARARGIN)

% Choose default command line output for cpm_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cpm_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Outputs from this function are returned to the command line.
function varargout = cpm_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function s_Callback(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of s as text
%        str2double(get(hObject,'String')) returns contents of s as a double


% --- Executes during object creation, after setting all properties.
function s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_Callback(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t as text
%        str2double(get(hObject,'String')) returns contents of t as a double


% --- Executes during object creation, after setting all properties.
function t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tm_Callback(hObject, eventdata, handles)
% hObject    handle to tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tm as text
%        str2double(get(hObject,'String')) returns contents of tm as a double


% --- Executes during object creation, after setting all properties.
function tm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tc_Callback(hObject, eventdata, handles)
% hObject    handle to tc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tc as text
%        str2double(get(hObject,'String')) returns contents of tc as a double


% --- Executes during object creation, after setting all properties.
function tc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tp_Callback(hObject, eventdata, handles)
% hObject    handle to tp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tp as text
%        str2double(get(hObject,'String')) returns contents of tp as a double


% --- Executes during object creation, after setting all properties.
function tp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cpm.
function cpm_Callback(hObject, eventdata, handles)
% hObject    handle to cpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


s = str2num(char(get(handles.s, 'String')))
t = str2num(char(get(handles.t, 'string')))
to = str2num(char(get(handles.to, 'string')))

graph = digraph(s,t)

acyclic = isdag(graph)

if(acyclic == 1)
[graph graphResult criticalNodes] = CPM(s,t,to)

else 
    disp('graph has cycles')
end

%set(handles.s,'String',"asdasd");




% --- Executes on button press in pert.
function pert_Callback(hObject, eventdata, handles)
% hObject    handle to pert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sa dwa przyciski PERT, aby moc uzyc CPM, lub CPM2
%w zaleznosci od danych, 

s = str2num(char(get(handles.s, 'String')))
t = str2num(char(get(handles.t, 'string')))
%tm = str2num(char(get(handles.tm, 'string')))
tc = str2num(char(get(handles.tc, 'string')))
tp = str2num(char(get(handles.tp, 'string')))
to = str2num(char(get(handles.to, 'string')))

graph = digraph(s,t)

acyclic = isdag(graph) %sprawdza czy graph jest acykliczny

if(acyclic == 1)
[graph graphResult criticalNodes] = CPM(s,t,to)
max(graphResult(:,2))
variation = PERT(s,t,tc, tp, criticalNodes)
timeExpected = str2num(char(get(handles.timeExpected, 'String')))
standardTime = calculateStandardTime(timeExpected, max(graphResult(:,2)), variation)

else
    disp('graph has cycles')
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2



function to_Callback(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of to as text
%        str2double(get(hObject,'String')) returns contents of to as a double


% --- Executes during object creation, after setting all properties.
function to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cpm2.
function cpm2_Callback(hObject, eventdata, handles)
% hObject    handle to cpm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s = str2num(char(get(handles.s, 'String')))
t = str2num(char(get(handles.t, 'string')))
tm = str2num(char(get(handles.tm, 'string')))
tc = str2num(char(get(handles.tc, 'string')))
tp = str2num(char(get(handles.tp, 'string')))


graph = digraph(s,t)

acyclic = isdag(graph)

if(acyclic == 1)

[graph graphResult criticalNodes] = CPM2(s,t,tc, tm, tp)

else
    disp('graph has cycles')
end




% --- Executes during object creation, after setting all properties.
function cpm2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cpm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function timeExpected_Callback(hObject, eventdata, handles)
% hObject    handle to timeExpected (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of timeExpected as text
%        str2double(get(hObject,'String')) returns contents of timeExpected as a double


% --- Executes during object creation, after setting all properties.
function timeExpected_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timeExpected (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pert2.
function pert2_Callback(hObject, eventdata, handles)
% hObject    handle to pert2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sa dwa przyciski PERT, aby moc uzyc CPM, lub CPM2
%w zaleznosci od danych, 
s = str2num(char(get(handles.s, 'String')))
t = str2num(char(get(handles.t, 'string')))
tm = str2num(char(get(handles.tm, 'string')))
tc = str2num(char(get(handles.tc, 'string')))
tp = str2num(char(get(handles.tp, 'string')))

graph = digraph(s,t)

acyclic = isdag(graph)

if(acyclic == 1)

[graph graphResult criticalNodes] = CPM2(s,t,tc, tm, tp)
max(graphResult(:,2));
variation = PERT(s,t,tc, tp, criticalNodes)
timeExpected = str2num(char(get(handles.timeExpected, 'String')))
standardTime = calculateStandardTime(timeExpected, max(graphResult(:,2)), variation)
else
   disp('graph has cycles') 
end


