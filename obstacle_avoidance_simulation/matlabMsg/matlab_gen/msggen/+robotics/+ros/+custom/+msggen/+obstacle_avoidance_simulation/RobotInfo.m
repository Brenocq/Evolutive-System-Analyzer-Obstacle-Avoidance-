classdef RobotInfo < robotics.ros.Message
    %RobotInfo MATLAB implementation of obstacle_avoidance_simulation/RobotInfo
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2019 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'obstacle_avoidance_simulation/RobotInfo' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '51f9bf9eb15cf94fbbc0d56fdb89ddbb' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Generation
        RobotNumber
        Fitness
        AvFitness
        SensorActivation
        LinearVelocity
        AngularVelocity
        RotationTime
        SensorAngle
        Mutation
    end
    
    properties (Constant, Hidden)
        PropertyList = {'AngularVelocity', 'AvFitness', 'Fitness', 'Generation', 'LinearVelocity', 'Mutation', 'RobotNumber', 'RotationTime', 'SensorActivation', 'SensorAngle'} % List of non-constant message properties
        ROSPropertyList = {'AngularVelocity', 'AvFitness', 'Fitness', 'Generation', 'LinearVelocity', 'Mutation', 'RobotNumber', 'RotationTime', 'SensorActivation', 'SensorAngle'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = RobotInfo(msg)
            %RobotInfo Construct the message object RobotInfo
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function generation = get.Generation(obj)
            %get.Generation Get the value for property Generation
            generation = int32(obj.JavaMessage.getGeneration);
        end
        
        function set.Generation(obj, generation)
            %set.Generation Set the value for property Generation
            validateattributes(generation, {'numeric'}, {'nonempty', 'scalar'}, 'RobotInfo', 'Generation');
            
            obj.JavaMessage.setGeneration(generation);
        end
        
        function robotnumber = get.RobotNumber(obj)
            %get.RobotNumber Get the value for property RobotNumber
            javaArray = obj.JavaMessage.getRobotNumber;
            array = obj.readJavaArray(javaArray, 'int32');
            robotnumber = int32(array);
        end
        
        function set.RobotNumber(obj, robotnumber)
            %set.RobotNumber Set the value for property RobotNumber
            if ~isvector(robotnumber) && isempty(robotnumber)
                % Allow empty [] input
                robotnumber = int32.empty(0,1);
            end
            
            validateattributes(robotnumber, {'numeric'}, {'vector'}, 'RobotInfo', 'RobotNumber');
            
            javaArray = obj.JavaMessage.getRobotNumber;
            array = obj.writeJavaArray(robotnumber, javaArray, 'int32');
            obj.JavaMessage.setRobotNumber(array);
        end
        
        function fitness = get.Fitness(obj)
            %get.Fitness Get the value for property Fitness
            javaArray = obj.JavaMessage.getFitness;
            array = obj.readJavaArray(javaArray, 'int32');
            fitness = int32(array);
        end
        
        function set.Fitness(obj, fitness)
            %set.Fitness Set the value for property Fitness
            if ~isvector(fitness) && isempty(fitness)
                % Allow empty [] input
                fitness = int32.empty(0,1);
            end
            
            validateattributes(fitness, {'numeric'}, {'vector'}, 'RobotInfo', 'Fitness');
            
            javaArray = obj.JavaMessage.getFitness;
            array = obj.writeJavaArray(fitness, javaArray, 'int32');
            obj.JavaMessage.setFitness(array);
        end
        
        function avfitness = get.AvFitness(obj)
            %get.AvFitness Get the value for property AvFitness
            javaArray = obj.JavaMessage.getAvFitness;
            array = obj.readJavaArray(javaArray, 'int32');
            avfitness = int32(array);
        end
        
        function set.AvFitness(obj, avfitness)
            %set.AvFitness Set the value for property AvFitness
            if ~isvector(avfitness) && isempty(avfitness)
                % Allow empty [] input
                avfitness = int32.empty(0,1);
            end
            
            validateattributes(avfitness, {'numeric'}, {'vector'}, 'RobotInfo', 'AvFitness');
            
            javaArray = obj.JavaMessage.getAvFitness;
            array = obj.writeJavaArray(avfitness, javaArray, 'int32');
            obj.JavaMessage.setAvFitness(array);
        end
        
        function sensoractivation = get.SensorActivation(obj)
            %get.SensorActivation Get the value for property SensorActivation
            javaArray = obj.JavaMessage.getSensorActivation;
            array = obj.readJavaArray(javaArray, 'single');
            sensoractivation = single(array);
        end
        
        function set.SensorActivation(obj, sensoractivation)
            %set.SensorActivation Set the value for property SensorActivation
            if ~isvector(sensoractivation) && isempty(sensoractivation)
                % Allow empty [] input
                sensoractivation = single.empty(0,1);
            end
            
            validateattributes(sensoractivation, {'numeric'}, {'vector'}, 'RobotInfo', 'SensorActivation');
            
            javaArray = obj.JavaMessage.getSensorActivation;
            array = obj.writeJavaArray(sensoractivation, javaArray, 'single');
            obj.JavaMessage.setSensorActivation(array);
        end
        
        function linearvelocity = get.LinearVelocity(obj)
            %get.LinearVelocity Get the value for property LinearVelocity
            javaArray = obj.JavaMessage.getLinearVelocity;
            array = obj.readJavaArray(javaArray, 'single');
            linearvelocity = single(array);
        end
        
        function set.LinearVelocity(obj, linearvelocity)
            %set.LinearVelocity Set the value for property LinearVelocity
            if ~isvector(linearvelocity) && isempty(linearvelocity)
                % Allow empty [] input
                linearvelocity = single.empty(0,1);
            end
            
            validateattributes(linearvelocity, {'numeric'}, {'vector'}, 'RobotInfo', 'LinearVelocity');
            
            javaArray = obj.JavaMessage.getLinearVelocity;
            array = obj.writeJavaArray(linearvelocity, javaArray, 'single');
            obj.JavaMessage.setLinearVelocity(array);
        end
        
        function angularvelocity = get.AngularVelocity(obj)
            %get.AngularVelocity Get the value for property AngularVelocity
            javaArray = obj.JavaMessage.getAngularVelocity;
            array = obj.readJavaArray(javaArray, 'single');
            angularvelocity = single(array);
        end
        
        function set.AngularVelocity(obj, angularvelocity)
            %set.AngularVelocity Set the value for property AngularVelocity
            if ~isvector(angularvelocity) && isempty(angularvelocity)
                % Allow empty [] input
                angularvelocity = single.empty(0,1);
            end
            
            validateattributes(angularvelocity, {'numeric'}, {'vector'}, 'RobotInfo', 'AngularVelocity');
            
            javaArray = obj.JavaMessage.getAngularVelocity;
            array = obj.writeJavaArray(angularvelocity, javaArray, 'single');
            obj.JavaMessage.setAngularVelocity(array);
        end
        
        function rotationtime = get.RotationTime(obj)
            %get.RotationTime Get the value for property RotationTime
            javaArray = obj.JavaMessage.getRotationTime;
            array = obj.readJavaArray(javaArray, 'single');
            rotationtime = single(array);
        end
        
        function set.RotationTime(obj, rotationtime)
            %set.RotationTime Set the value for property RotationTime
            if ~isvector(rotationtime) && isempty(rotationtime)
                % Allow empty [] input
                rotationtime = single.empty(0,1);
            end
            
            validateattributes(rotationtime, {'numeric'}, {'vector'}, 'RobotInfo', 'RotationTime');
            
            javaArray = obj.JavaMessage.getRotationTime;
            array = obj.writeJavaArray(rotationtime, javaArray, 'single');
            obj.JavaMessage.setRotationTime(array);
        end
        
        function sensorangle = get.SensorAngle(obj)
            %get.SensorAngle Get the value for property SensorAngle
            javaArray = obj.JavaMessage.getSensorAngle;
            array = obj.readJavaArray(javaArray, 'single');
            sensorangle = single(array);
        end
        
        function set.SensorAngle(obj, sensorangle)
            %set.SensorAngle Set the value for property SensorAngle
            if ~isvector(sensorangle) && isempty(sensorangle)
                % Allow empty [] input
                sensorangle = single.empty(0,1);
            end
            
            validateattributes(sensorangle, {'numeric'}, {'vector'}, 'RobotInfo', 'SensorAngle');
            
            javaArray = obj.JavaMessage.getSensorAngle;
            array = obj.writeJavaArray(sensorangle, javaArray, 'single');
            obj.JavaMessage.setSensorAngle(array);
        end
        
        function mutation = get.Mutation(obj)
            %get.Mutation Get the value for property Mutation
            javaArray = obj.JavaMessage.getMutation;
            array = obj.readJavaArray(javaArray, 'logical');
            mutation = logical(array);
        end
        
        function set.Mutation(obj, mutation)
            %set.Mutation Set the value for property Mutation
            if ~isvector(mutation) && isempty(mutation)
                % Allow empty [] input
                mutation = logical.empty(0,1);
            end
            
            validateattributes(mutation, {'logical', 'numeric'}, {'vector'}, 'RobotInfo', 'Mutation');
            
            javaArray = obj.JavaMessage.getMutation;
            array = obj.writeJavaArray(mutation, javaArray, 'logical');
            obj.JavaMessage.setMutation(array);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Generation = obj.Generation;
            cpObj.RobotNumber = obj.RobotNumber;
            cpObj.Fitness = obj.Fitness;
            cpObj.AvFitness = obj.AvFitness;
            cpObj.SensorActivation = obj.SensorActivation;
            cpObj.LinearVelocity = obj.LinearVelocity;
            cpObj.AngularVelocity = obj.AngularVelocity;
            cpObj.RotationTime = obj.RotationTime;
            cpObj.SensorAngle = obj.SensorAngle;
            cpObj.Mutation = obj.Mutation;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Generation = strObj.Generation;
            obj.RobotNumber = strObj.RobotNumber;
            obj.Fitness = strObj.Fitness;
            obj.AvFitness = strObj.AvFitness;
            obj.SensorActivation = strObj.SensorActivation;
            obj.LinearVelocity = strObj.LinearVelocity;
            obj.AngularVelocity = strObj.AngularVelocity;
            obj.RotationTime = strObj.RotationTime;
            obj.SensorAngle = strObj.SensorAngle;
            obj.Mutation = strObj.Mutation;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Generation = obj.Generation;
            strObj.RobotNumber = obj.RobotNumber;
            strObj.Fitness = obj.Fitness;
            strObj.AvFitness = obj.AvFitness;
            strObj.SensorActivation = obj.SensorActivation;
            strObj.LinearVelocity = obj.LinearVelocity;
            strObj.AngularVelocity = obj.AngularVelocity;
            strObj.RotationTime = obj.RotationTime;
            strObj.SensorAngle = obj.SensorAngle;
            strObj.Mutation = obj.Mutation;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.obstacle_avoidance_simulation.RobotInfo.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.obstacle_avoidance_simulation.RobotInfo;
            obj.reload(strObj);
        end
    end
end
