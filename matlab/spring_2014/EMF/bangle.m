function [ angle ] = bangle( y,x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

      angle = atan2(y, x);
      tem = (angle < 0);
      angle(tem) = angle(tem) + 2 .* pi;

end

