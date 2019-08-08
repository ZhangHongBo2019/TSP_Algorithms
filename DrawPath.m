%% ��·������
%����
% Chrom  ����·��   
% X      ����������λ��
function DrawPath(Chrom,X)
R=[Chrom(1,:) Chrom(1,1)]; %һ�������(����)
figure;
hold on
plot(X(:,1),X(:,2),'o','color',[0.5,0.5,0.5])

text(X(Chrom(1,1),1),X(Chrom(1,1),2),'\leftarrow�����ĳ���','Color','red','FontSize',14);
for i=1:size(X,1)
    text(X(i,1)+0.09,X(i,2)+0.09,num2str(i),'color','red');
end
A=X(R,:);
row=size(A,1);
for i=2:row
    [ax,ay] = dsxy2figxy(gca,A(i-1:i,1),A(i-1:i,2));%����ת��
    annotation('textarrow',ax,ay,'HeadWidth',8,'color',[0,0,1]);
end
hold off
xlabel('������')
ylabel('������')
title('�켣ͼ')
