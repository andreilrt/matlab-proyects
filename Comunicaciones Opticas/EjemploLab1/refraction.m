function varargout = refraction(varargin)
% REFRACTION MATLAB code for refraction.fig
%      REFRACTION, by itself, creates a new REFRACTION or raises the existing
%      singleton*.
%
%      H = REFRACTION returns the handle to a new REFRACTION or the handle to
%      the existing singleton*.
%
%      REFRACTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REFRACTION.M with the given input arguments.
%
%      REFRACTION('Property','Value',...) creates a new REFRACTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before refraction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to refraction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help refraction

% Last Modified by GUIDE v2.5 11-Aug-2018 21:18:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @refraction_OpeningFcn, ...
                   'gui_OutputFcn',  @refraction_OutputFcn, ...
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


% --- Executes just before refraction is made visible.
function refraction_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to refraction (see VARARGIN)

% Choose default command line output for refraction
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
set(handles.thi,'String',char(952));
set(handles.thr,'String',char(952));



% UIWAIT makes refraction wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = refraction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hO;bject,'Max') to determine range of slider

%critical n2 n1
n1=str2num(get(handles.n1,'String')); n2=str2num(get(handles.n2,'String'));
if n2<n1
critical=asind(n2/n1);
end
%axis1
ang1=90-(handles.slider.Value)*180;
handles.slval.String=num2str(ang1);
x=[-10:0.01:10];
m1=tand(90-ang1);
y1=m1*x;
plot(handles.ax1,x,y1,'b','linewidth',2);
rth=linspace(90,90-ang1,1000);
line(handles.ax1,2*cosd(rth),2*sind(rth),'linewidth',2,'color','k')
if n2<n1
  if abs(ang1)>critical
re=line(handles.ax1,-x,y1,'linewidth',1.5,'color','b','linestyle','--');
  end
end
if ang1==0
    plot(handles.ax1,[0 0],[0 10],'b','linewidth',2)
end
if ang1>=90
    line(handles.ax1,[10 0],[0 0],'color','b','linewidth',2)
    line(handles.ax1,[-10 0],[0 0],'color','b','linewidth',2)
elseif ang1<=-90
    line(handles.ax1,[-10 0],[0 0],'color','b','linewidth',2)
    line(handles.ax1,[10 0],[0 0],'color','b','linewidth',2)
end
line(handles.ax1,[0 0],[0 10],'linestyle','--','color','k')
handles.ax1.XLim=[-10 10]; handles.ax1.XTick=[]; handles.ax1.XTickLabel=[]; 
handles.ax1.YLim=[0 10];   handles.ax1.YTick=[]; handles.ax1.YTickLabel=[];
handles.ax1.Color;
%axis2
ang2=asind((n1*sind(ang1)/n2));
handles.ang2.String=num2str(ang2);
m2=tand(90-ang2);
y2=m2*x;
plot2=plot(handles.ax2,x,y2,'r','linewidth',2);
line(handles.ax2,[0 0],[0 -10],'linestyle','--','color','k');
rth2=linspace(270,270-ang2,1000);
rou=line(handles.ax2,2*cosd(rth2),2*sind(rth2),'linewidth',2,'color','k');

if ang1==0
    plot(handles.ax2,[0 0],[0 -10],'r','linewidth',2)
elseif abs(ang1)==90
    plot2.Visible='off';
    rou.Visible='off';
end
if n2<n1
  if abs(ang1)>critical
    plot2.Visible='off';
    rou.Visible='off';
  end
end
if n2<n1
  if isequal(abs(round(ang1,2)),abs(round(critical,2)))
     if ang1>0
    line(handles.ax2,[-10 0],[0 0],'color','r','linewidth',2)
    end
     if ang1<0
    line(handles.ax2,[10 0],[0 0],'color','r','linewidth',2)
     end
    plot2.Visible='off';
    re.Visible='off';
    line(handles.ax2,[0 0],[0 -10],'linestyle','--','color','k'); 
  end
end
handles.ax2.XLim=[-10 10]; handles.ax2.XTick=[]; handles.ax2.XTickLabel=[]; 
handles.ax2.YLim=[-10 0];   handles.ax2.YTick=[]; handles.ax2.YTickLabel=[];
%axes property by n2 n1
if n1>n2
    handles.ax1.Color=[0 1 1];
elseif n1<n2
    handles.ax2.Color=[0 1 1];
end
warning off


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
slider_Callback(hObject, eventdata, handles)
n1=str2num(get(handles.n1,'String')); n2=str2num(get(handles.n2,'String'));
if n1>n2
set(handles.cr,'Enable','on');
else
set(handles.cr,'Enable','off');
end

% Hints: get(hObject,'String') returns contents of n1 as text
%        str2double(get(hObject,'String')) returns contents of n1 as a double
% --- Executes during object creation, after setting all properties.
function n1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
slider_Callback(hObject, eventdata, handles)
n1=str2num(get(handles.n1,'String')); n2=str2num(get(handles.n2,'String'));
if n1>n2
set(handles.cr,'Enable','on');
else
set(handles.cr,'Enable','off');
end

% Hints: get(hObject,'String') returns contents of n2 as text
%        str2double(get(hObject,'String')) returns contents of n2 as a double

% --- Executes during object creation, after setting all properties.
function n2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slval_Callback(hObject, eventdata, handles)
% hObject    handle to slval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider,'Value',(90-str2num(get(handles.slval,'string')))/180)
slider_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of slval as text
%        str2double(get(hObject,'String')) returns contents of slval as a double
%set(handles.slider,'Value',str2num(get(handles.slval,'String')));

% --- Executes during object creation, after setting all properties.
function slval_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ang2_Callback(hObject, eventdata, handles)
% hObject    handle to ang2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n1=str2num(get(handles.n1,'String')); n2=str2num(get(handles.n2,'String'));
ang2=str2num(handles.ang2.String);
ang1=asind((n2*sind(ang2)/n1));
set(handles.slider,'Value',(90-ang1)/180);
slider_Callback(hObject, eventdata, handles)



% Hints: get(hObject,'String') returns contents of ang2 as text
%        str2double(get(hObject,'String')) returns contents of ang2 as a double

% --- Executes during object creation, after setting all properties.
function ang2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ang2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cr.
function cr_Callback(hObject, eventdata, handles)
% hObject    handle to cr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n1=str2num(get(handles.n1,'String')); n2=str2num(get(handles.n2,'String'));
if n2<n1
critical=asind(n2/n1);
handles.slider.Value=(90-critical)/180;
slider_Callback(hObject, eventdata, handles)
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
