x1 = input('Enter x coordinate of point 1: ');
y1 = input('Enter y coordinate of point 1: ');
x2 = input('Enter x coordinate of point 2: ');
y2 = input('Enter y coordinate of point 2: ');
x3 = input('Enter x coordinate of point 3: ');
y3 = input('Enter y coordinate of point 3: ');

matrix = [(x1^2+y1^2), x1, y1, 1;
      (x2^2+y2^2), x2, y2, 1;
      (x3^2+y3^2), x3, y3, 1]
      
detx = det(matrix(1:3,[1 3 4]));
dety = det(matrix(1:3,[1 2 4]));
detz = det(matrix(1:3,[2 3 4]));
deta = det(matrix(1:3,[1 2 3]));
      
h = (1/2)*(detx/detz);
k = -1*(1/2)*(dety/detz);
c = [h,k];      
disp('center (h,k): ');
disp(c);

r = sqrt(h^2 + k^2 + (deta/detz));
disp('radius r: ');
disp(r);

D = -1*(detx/detz);
E = dety/detz;
F = -1*(deta/detz);
v = [D,E,F];
disp('Vector [D E F]: ');
disp(v);


