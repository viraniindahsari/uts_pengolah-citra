function varargout = virani(varargin)
% VIRANI MATLAB code for virani.fig
%      VIRANI, by itself, creates a new VIRANI or raises the existing
%      singleton*.

%      H = VIRANI returns the handle to a new VIRANI or the handle to
%      the existing singleton*.
%
%      VIRANI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIRANI.M with the given input arguments.
%
%      VIRANI('Property','Value',...) creates a new VIRANI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before virani_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to virani_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help virani

% Last Modified by GUIDE v2.5 04-May-2021 22:52:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @virani_OpeningFcn, ...
                   'gui_OutputFcn',  @virani_OutputFcn, ...
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


% --- Executes just before virani is made visible.
function virani_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to virani (see VARARGIN)

% Choose default command line output for virani
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes virani wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = virani_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[namafile, formatfile] = uigetfile({'*.png'}, 'membuka gambar'); %memilih gambar
image = imread([formatfile, namafile]); %membaca gambar
guidata(hObject, handles);
axes(handles.axes1); %memilih axes1 sebagai letak gambar yang dimunculkan
imshow(image); %memunculkan gambar