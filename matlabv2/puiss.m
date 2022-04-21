function varargout = puiss(varargin)
% PUISS MATLAB code for puiss.fig
%      PUISS, by itself, creates a new PUISS or raises the existing
%      singleton*.
%
%      H = PUISS returns the handle to a new PUISS or the handle to
%      the existing singleton*.
%
%      PUISS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUISS.M with the given input arguments.
%
%      PUISS('Property','Value',...) creates a new PUISS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before puiss_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to puiss_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help puiss

% Last Modified by GUIDE v2.5 21-Apr-2022 20:26:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @puiss_OpeningFcn, ...
                   'gui_OutputFcn',  @puiss_OutputFcn, ...
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


% --- Executes just before puiss is made visible.
function puiss_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to puiss (see VARARGIN)

% Choose default command line output for puiss
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes puiss wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = puiss_OutputFcn(hObject, eventdata, handles) 
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
close
expo()

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
loga()

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global a 
a=get(hObject,'Value')
set(handles.text2,'String',['a = ', num2str(a)])


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global b
b=get(hObject,'Value')
set(handles.text3,'String',['b = ', num2str(b)])

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global N
N=get(hObject,'Value')
N=floor(N)
set(handles.text7, 'String', ['N = ', num2str(N)])


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global sigma
sigma=get(hObject,'Value')
set(handles.text5, 'String', ['σ = ', num2str(sigma)])

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global class
class=get(hObject,'Value')
set(handles.text4, 'String', ['class = ', num2str(class)])


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global Moy
Moy=get(hObject,'Value')
set(handles.text6, 'String', ['Moy = ', num2str(Moy)])


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global N
global a
global b
global lambda
global Moy 
global sigma 
global class 
global valeur_popup
global flag

global x
global y
global ybru
global ybru2
global yb
global YY

global xmin
global xmax
global flag_simu

aff=1;
flag_simu=1;

[x,y,ybru,ybru2]= puissance(xmin,xmax,N,a ,b, sigma, Moy, class, aff)

if flag==0

    axes(handles.Graph1)
    axis tight
    plot(x,y);
    xlabel('x');
    ylabel('y');
    title('Simulation du système. y=b*x^a');

    axes(handles.hist)
    axis tight
    if(valeur_popup==2)
        YY=ybru;
        yb=ybru+y
        hist(ybru, class);
        xlabel('x');
        ylabel('y');
        title('Bruit hist');
    elseif valeur_popup==1
        YY=ybru2;
        yb=ybru2+y
        histfit(ybru2, class);
        xlabel('x');
        ylabel('y');
        title('Bruit histfit');
    end



    axes(handles.Graph2)
    axis tight
    plot(log(x),log(y),'.r');
    xlabel('x');
    ylabel('y');
    title('y + Bruit ');

    axes(handles.plot)
    axis tight
    plot(x,YY);
    xlabel('x');
    ylabel('bruit');
    title('Bruit');

%-----------------------------

else
    figure(1);
    axis tight
    plot(x,y);
    xlabel('x');
    ylabel('y');
    title('Simulation du système y=lambda+mu*x');


    figure(4)
    axis tight
    if valeur_popup==2
        YY=ybru;
        yb=ybru+y
        hist(ybru,class);
        xlabel('x');
        ylabel('y');
        title('Bruit hist');
    elseif valeur_popup==1
        YY=ybru2;
        yb=ybru2+y
        histfit(ybru2,class);
        xlabel('x');
        ylabel('y');
        title('Bruit histfit');
    end

    figure(2)
    axis tight
    plot(x,y+(YY),'.r');
    xlabel('x');
    ylabel('y');
    title('y + Bruit ');

    figure(3)
    axis tight
    plot(x,YY);
    xlabel('x');
    ylabel('bruit');
    title('Bruit');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
global valeur_popup
contents = cellstr(get(hObject,'String'));
choix=contents{get(hObject,'Value')};
if choix=="  Bruit en distribution normale"  %28
    valeur_popup=1
end
if choix=="Bruit en distribution uniforme"  %30
    valeur_popup=2
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x 
global yb
global a 
global y
global b 
global flag
global sigma
global b0
global b1
global Rcarre
global sigma_est
global DB10
global DB11
global YY
[b0,b1,sigma_est,Rcarre, DB10, DB11]=extraction(x,yb); 
save('extractsave','a', 'b','sigma','b0','b1','sigma_est','Rcarre','DB10', 'DB11') 

if flag==0
    axes(handles.Graph2)
    plot(x,log(y)+(YY),'.r', x,(b0+b1*x),'b');
    xlabel('x');
    ylabel('y');
    title(['log(b0+b1)*x']);
    axis tight


else
    figure(10)
    plot(x,log(y)+(YY),'.r', x,log(b0+b1)*x,'b');
    xlabel('x');
    ylabel('y');
    title('log(b0+b1)*x');
    axis tight
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xminxmax()

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
global flag2
flag2=get(hObject,'Value')
set(handles.radiobutton2,'String','Tableau Off')
if flag2 == 1
    set(handles.radiobutton2, 'String', 'Tableau On')
    Tableau()
else
    close(Tableau)
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
lineaire()
