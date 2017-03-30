% Program_6b - The Sierpinski Triangle.
% Chapter 6 - Fractals and Multifractals.
% Copyright Springer 2014. Stephen Lynch.

% The Sierpinski triangle (Figure 6.6).
% The vertices of the triangle.
A=[0,0];B=[4,0];C=[2,2*sqrt(3)];
% The number of points to be plotted.
Nmax=50000;
P=zeros(Nmax,2);
scale=1/2;
for n=1:Nmax
    r=rand;
    if r<1/3;
        P(n+1,:)=P(n,:)+(A-P(n,:)).*scale;
    elseif r<2/3;
        P(n+1,:)=P(n,:)+(B-P(n,:)).*scale;
    else
        P(n+1,:)=P(n,:)+(C-P(n,:)).*scale;
    end
end

plot(P(:,1),P(:,2),'.','MarkerSize',1);
axis([0 4 0 2*sqrt(3)])
set(gca,'Position',[0 0 1 1])

% End of Program_6b.