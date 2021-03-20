classdef DBMOPPa < PROBLEM
    properties
        distance_problem_parameters;
    end

    methods
        %% Default settings of the problem
        function Setting(obj)
            if isempty(obj.M); obj.M = 3; end
            if isempty(obj.D); obj.D = obj.M+9; end
            obj.lower    = zeros(1,obj.D);
            obj.upper    = ones(1,obj.D);
            obj.encoding = 'real';
            obj.distance_problem_parameters = load('parametersa.mat');
        end
        %% Calculate objective values
        function PopObj = CalObj(obj,PopDec)
            %disp(PopDec);
            [N,~]  = size(PopDec);
            PopObj = zeros(N,3);
            %param = distance_problem_generator(3,2);
            param = load('parametersa.mat');
            for row = 1:N
                input = PopDec(row,:);
                %disp(input);
                objective = distance_points_problem(input,param.parameters);
%                 disp(objective);
                PopObj(row,:) = objective;
            end
        end
        
            
        
    end
end