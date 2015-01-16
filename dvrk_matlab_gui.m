function varargout = dvrk_matlab_gui(varargin)
% DVRK_MATLAB_GUI MATLAB code for dvrk_matlab_gui.fig
%      DVRK_MATLAB_GUI, by itself, creates a new DVRK_MATLAB_GUI or raises the existing
%      singleton*.
%
%      H = DVRK_MATLAB_GUI returns the handle to a new DVRK_MATLAB_GUI or the handle to
%      the existing singleton*.
%
%      DVRK_MATLAB_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DVRK_MATLAB_GUI.M with the given input arguments.
%
%      DVRK_MATLAB_GUI('Property','Value',...) creates a new DVRK_MATLAB_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dvrk_matlab_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dvrk_matlab_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dvrk_matlab_gui

% Last Modified by GUIDE v2.5 16-Jan-2015 12:03:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dvrk_matlab_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @dvrk_matlab_gui_OutputFcn, ...
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


% --- Executes just before dvrk_matlab_gui is made visible.
function dvrk_matlab_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dvrk_matlab_gui (see VARARGIN)

% Choose default command line output for dvrk_matlab_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dvrk_matlab_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dvrk_matlab_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton_connect_to_ros.
function radiobutton_connect_to_ros_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_connect_to_ros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_connect_to_ros
