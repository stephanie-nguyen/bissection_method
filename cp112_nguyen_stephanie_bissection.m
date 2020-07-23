%Program 1.1 Bisection Method
%Computes approximate solution of f(x)=0
%Input: function handle f; a,b such that f(a)*f(b)<0, and tolerance tol
%Output: Approximate solution xc

% CP 1.1.2: Use the Bisection Method to find the root to eight correct decimal places. 
% (a) x^5 + x - 1
% (b) sinx - 6x - 5 
% (c) lnx + x^2 - 3


function c=cp112_nguyen_stephanie_bissection(f,a,b,tol)
    if f(a)*(b)<0
    else
        fprintf('does not satisfy f(a)*(b)<0\n');
        a=input('use new start value for interval:\n');
        b=input('use new end value for interval:\n');
    end
    for i=2:1000
        c=(b+a)/2;
        if f(b)*f(c)<0
            a=c;
        else
            b=c;
        end
        if f(a)*f(c)<0
            b=c;
        else
            a=c;
        end
        new(1)=0;
        new(i)=c;
        if abs((new(i)-new(i-1))/new(i))<tol,end,end
end

