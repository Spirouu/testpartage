function varargout = lineaire(varargin)
% LINEAIRE MATLAB code for lineaire.fig
%      LINEAIRE, by itself, creates a new LINEAIRE or raises the existing
%      singleton*.
%
%      H = LINEAIRE returns the handle to a new LINEAIRE or the handle to
%      the existing singleton*.
%
%      LINEAIRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEAIRE.M with the given input arguments.
%
%      LINEAIRE('Property','Value',...) creates a new LINEAIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lineaire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lineaire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lineaire

% Last Modified by GUIDE v2.5 01-Apr-2022 11:19:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lineaire_OpeningFcn, ...
                   'gui_OutputFcn',  @lineaire_OutputFcn, ...
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


% --- Executes just before lineaire is made visible.
function lineaire_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lineaire (see VARARGIN)
global xmin 
global xmax
global a
global b
global sigma
global class
global N 
global Moy 
global valeur_popup
xmin=1;
xmax=99;
a=10;
b=5;
sigma=1;
class=10;
N=50;
Moy=2;
valeur_popup=1;

% Choose default command line output for lineaire
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lineaire wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lineaire_OutputFcn(hObject, eventdata, handles) 
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
set(handles.text3,'String',['a = ', num2str(a)])


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
set(handles.text4,'String',['b = ', num2str(b)])


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
N=get(hObject,'Value');
N=floor(N)
set(handles.text5, 'String', ['N = ', num2str(N)])

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
set(handles.text7, 'String', ['σ = ', num2str(sigma)])

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
set(handles.text6, 'String', ['Class = ', num2str(class)])

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
set(handles.text8, 'String', ['Moy = ', num2str(Moy)])

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global N
global a 
global b 
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



aff=1;

[x,y,ybru,ybru2]=linee(N,a ,b, sigma, Moy, class, aff)

if flag==0

    axes(handles.Graph1)
    plot(x,y,'m');
    xlabel('x');
    ylabel('y');
    title('Simulation du système y=ax+b');
    axis tight

    axes(handles.hist)
    axis tight
    if(valeur_popup==2)
        XX=ybru;
        yb=ybru+y
        hist(ybru, class);
        xlabel('x');
        ylabel('y');
        title('Distribution du bruit');
    elseif valeur_popup==1
        XX=ybru2;
        yb=ybru2+y
        histfit(ybru2, class);
        xlabel('x');
        ylabel('y');
        title('Distribution du bruit');
    end

    axes(handles.Graph2)
    plot(x,y+XX,'.r');
    xlabel('x');
    ylabel('y bruité');
    title('Signal bruité');
    axis tight

    axes(handles.plot)
    plot(x,XX);
    xlabel('x');
    ylabel('bruit');
    title('Bruit du signal');
    axis tight

%-----------------------------

else
    figure(1);
    plot(x,y);
    xlabel('x');
    ylabel('y');
    title('Simulation du système y=ax+b');
    axis tight

    figure(4)
    axis tight
    if valeur_popup==2
        XX=ybru;
        yb=ybru+y
        hist(ybru,class);
        xlabel('x');
        ylabel('y');
        title('Distribution du bruit');
    elseif valeur_popup==1
        XX=ybru2;
        yb=ybru2+y
        histfit(ybru2,class);
        xlabel('x');
        ylabel('y');
        title('Distribution du bruit');
    end

    figure(2)
    plot(x,y+XX,'.r');
    xlabel('x');
    ylabel('y bruité');
    title('Signal bruité');
    axis tight

    figure(3)
    plot(x,XX);
    xlabel('x');
    ylabel('bruit');
    title('Bruit du signal');
    axis tight
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


% --- Executes on button press in radiobutton2.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global flag
flag=get(hObject,'Value')
set(handles.radiobutton1,'String','ON')
if flag == 0
    set(handles.radiobutton1, 'String', 'Off')
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x 
global yb
global a 
global b 
global flag
global sigma
global b0
global b1
global Rcarre
global sigma_est
global DB10
global DB11
[b0,b1,sigma_est,Rcarre, DB10, DB11]=extraction(x,yb); 
save('extractsave','a', 'b','sigma','b0','b1','sigma_est','Rcarre','DB10', 'DB11') 

if flag==0
    axes(handles.Graph2)
    plot(x,yb,'.r', x,b0+b1*x,'b');
    xlabel('x');
    ylabel('y');
    title('b0 et b1');
    axis tight


else
    figure(10)
    plot(x,yb,'.r', x,b0+b1*x,'b');
    xlabel('x');
    ylabel('y');
    title('b0 et b1');
    axis tight
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

xminxmax()


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag2
flag2=get(hObject,'Value')
set(handles.radiobutton2,'String','Tableau Off')
if flag2 == 1
    set(handles.radiobutton2, 'String', 'Tableau On')
    Tableau()
else
    close(Tableau)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton2
