function varargout = Yessika123190139(varargin)
% YESSIKA123190139 MATLAB code for Yessika123190139.fig
%      YESSIKA123190139, by itself, creates a new YESSIKA123190139 or raises the existing
%      singleton*.
%
%      H = YESSIKA123190139 returns the handle to a new YESSIKA123190139 or the handle to
%      the existing singleton*.
%
%      YESSIKA123190139('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YESSIKA123190139.M with the given input arguments.
%
%      YESSIKA123190139('Property','Value',...) creates a new YESSIKA123190139 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Yessika123190139_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Yessika123190139_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Yessika123190139

% Last Modified by GUIDE v2.5 08-Apr-2021 00:35:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Yessika123190139_OpeningFcn, ...
                   'gui_OutputFcn',  @Yessika123190139_OutputFcn, ...
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


% --- Executes just before Yessika123190139 is made visible.
function Yessika123190139_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Yessika123190139 (see VARARGIN)

% Choose default command line output for Yessika123190139
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Yessika123190139 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Yessika123190139_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function judul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to judul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function tahun_Callback(hObject, eventdata, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tahun as text
%        str2double(get(hObject,'String')) returns contents of tahun as a double


% --- Executes during object creation, after setting all properties.
function tahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cek_Callback(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tahun = get(handles.tahun, 'string');
tahun = str2num(tahun);
if tahun <= 0
    hasil = 'Tahun tidak boleh 0/-';
else 
    if rem(tahun,4)==0
        hasil= 'Tahun kabisat';
    else
        hasil ='Bukan tahun kabisat';
    end
end
set (handles.hasil, 'string',(hasil));
% Hints: get(hObject,'String') returns contents of cek as text
%        str2double(get(hObject,'String')) returns contents of cek as a double


% --- Executes during object creation, after setting all properties.
function cek_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
