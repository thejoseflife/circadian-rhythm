function [output] = SNF(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% simple model with SNF structure
% Generated: 03-Sep-2012 16:57:35
% Generated by Jae Kyoung Kim and Daniel Forger by using SBtoolbox2.  
% 
% [output] = simplemodel() => output = initial conditions in column vector
% [output] = simplemodel('states') => output = state names in cell-array
% [output] = simplemodel('algebraic') => output = algebraic variable names in cell-array
% [output] = simplemodel('parameters') => output = parameter names in cell-array
% [output] = simplemodel('parametervalues') => output = parameter values in column vector
% [output] = simplemodel(time,statevector) => output = time derivatives in column vector
% [t,x]=ode15s(@SNF,[0 20],SNF()); => output = solution
% 
% State names and ordering:
% 
% statevector(1): M
% statevector(2): Pc
% statevector(3): P
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global time
parameterValuesNew = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HANDLE VARIABLE INPUT ARGUMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if nargin == 0,
	% Return initial conditions of the state variables (and possibly algebraic variables)
	output = [0.1, 0.1, 0.1];
	output = output(:);
	return
elseif nargin == 1,
	if strcmp(varargin{1},'states'),
		% Return state names in cell-array
		output = {'M', 'Pc', 'P'};
	elseif strcmp(varargin{1},'algebraic'),
		% Return algebraic variable names in cell-array
		output = {};
	elseif strcmp(varargin{1},'parameters'),
		% Return parameter names in cell-array
		output = {'ao', 'at', 'ah', 'bo', 'bt', 'bh', 'A', 'Kd'};
	elseif strcmp(varargin{1},'parametervalues'),
		% Return parameter values in column vector
		output = [1, 1, 1, 1, 1, 1, 0.0659, 1e-05];
	else
		error('Wrong input arguments! Please read the help text to the ODE file.');
	end
	output = output(:);
	return
elseif nargin == 2,
	time = varargin{1};
	statevector = varargin{2};
elseif nargin == 3,
	time = varargin{1};
	statevector = varargin{2};
	parameterValuesNew = varargin{3};
	if length(parameterValuesNew) ~= 8,
		parameterValuesNew = [];
	end
elseif nargin == 4,
	time = varargin{1};
	statevector = varargin{2};
	parameterValuesNew = varargin{4};
else
	error('Wrong input arguments! Please read the help text to the ODE file.');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% STATES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M = statevector(1);
Pc = statevector(2);
P = statevector(3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PARAMETERS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isempty(parameterValuesNew),
	ao = 1;
	at = 1;
	ah = 1;
	bo = 1;
	bt = 1;
	bh = 1;
	A = 0.0659;
	Kd = 1e-05;
else
	ao = parameterValuesNew(1);
	at = parameterValuesNew(2);
	ah = parameterValuesNew(3);
	bo = parameterValuesNew(4);
	bt = parameterValuesNew(5);
	bh = parameterValuesNew(6);
	A = parameterValuesNew(7);
	Kd = parameterValuesNew(8);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DIFFERENTIAL EQUATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M_dot = ao*(A-P-Kd+((A-P-Kd)^2+4*A*Kd)^0.5)/(2*A)-bo*M;
Pc_dot = at*M-bt*Pc;
P_dot = ah*Pc-bh*P;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RETURN VALUES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% STATE ODEs
output(1) = M_dot;
output(2) = Pc_dot;
output(3) = P_dot;
% return a column vector 
output = output(:);
return

