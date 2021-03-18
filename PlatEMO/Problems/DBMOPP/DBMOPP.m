classdef DBMOPP < PROBLEM
    properties
        distance_problem_parameters;
    end
    methods
        %% Initialization
        function obj = DBMOPP()
            
            if isempty(obj.M)
                obj.M = 3;
            end
            if isempty(obj.D)
                obj.D = obj.M + 4;
            end
            obj.lower    = zeros(1,obj.D);
            obj.upper    = ones(1,obj.D);
            obj.encoding = 'real';
            obj.distance_problem_parameters = distance_problem_generator(obj.M,obj.D);
            
        end
        %% Calculate objective values
        function PopObj = CalObj(obj,PopDec)
            [N,D]  = size(PopDec);
            PopObj = [];
            PopObj = zeros(N, 3);
            for row = 1:N
                input = PopDec(row,:);
                objective = distance_points_problem(input,obj.distance_problem_parameters);
%                 PopObj = [PopObj ; objective];
                PopObj(row, :) = objective(:);
            end
        end
        %% Sample reference points on Pareto front
        
        
    end
end