function varargout = contoh_gui(varargin)
% CONTOH_GUI MATLAB code for contoh_gui.fig
%      CONTOH_GUI, by itself, creates a new CONTOH_GUI or raises the existing
%      singleton*.
%
%      H = CONTOH_GUI returns the handle to a new CONTOH_GUI or the handle to
%      the existing singleton*.
%
%      CONTOH_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTOH_GUI.M with the given input arguments.
%
%      CONTOH_GUI('Property','Value',...) creates a new CONTOH_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before contoh_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to contoh_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help contoh_gui

% Last Modified by GUIDE v2.5 10-May-2019 11:40:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @contoh_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @contoh_gui_OutputFcn, ...
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


% --- Executes just before contoh_gui is made visible.
function contoh_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to contoh_gui (see VARARGIN)

% Choose default command line output for contoh_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes contoh_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = contoh_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename path] = uigetfile({'*.jpg';'*.png';'*.tif';}, 'Buka Gambar');
if isequal(filename,0)
    return;
end
%im_input = imread(filename);
str=strcat(path,filename);  
handles.filenya = filename;

% menampilkan citra asli
eval('im_input=imread(str);')
axes(handles.axes1);
imshow(im_input);

info = imfinfo(str);

handles.Img=im_input;
handles.namafile=im_input;

guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray=handles.Img;
g_gray=rgb2gray(gray);
axes(handles.axes2);
imshow(g_gray);

guidata(hObject,handles);
handles.h_gray=g_gray;
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray=handles.Img;
g_gray=rgb2gray(gray);
rata=fix(mean(mean(g_gray)));
[br kl]=size(g_gray);
for i=1:br
    for j=1:kl
        if(g_gray(i,j)<rata)
            baru(i,j)=0;
        else
            baru(i,j)=1;
        end
    end
end
axes(handles.axes3);
imshow(baru);

guidata(hObject,handles);
