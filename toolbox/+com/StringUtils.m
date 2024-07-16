classdef StringUtils

    methods (Static, Access = public)

        function isBlank = isBlank(value)

            arguments

                value (1, :) string = missing();

            end

            isBlank = ismissing(value) | strtrim(value) == "";
        end

    end
    
    methods (Access = private)

        function self = StringUtils()
        end

    end

end
