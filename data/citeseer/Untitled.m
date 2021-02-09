% for i = 1:2708
%     for j = 1:2708
%         A(i,j) = norm(matrix(i,:)-matrix(j,:),2);
%     end
% end
k  = 500;
B = zeros(2708,2708);
 for i = 1:2708
     [a,b]  = sort(A(i,:),'descend');
     for j = 1:k
     B(i,b(j)) =  a(j);   
     end
 end
 
 B = (B+B')/2;
 for i = 1:2708
     aa = sum(B(i,:));
     B(i,:) = B(i,:)/aa;
 end 
 imagesc(B)
 