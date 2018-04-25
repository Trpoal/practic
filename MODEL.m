function MODEL(dt, T, M, X, V)
все идет по плану 
(нет)
а Жора все же ЛОШАРА
t = 0 : dt : T;
XYLim=[-max(max(X)) max(max(X))]*1.2;
TRACE = cell(size(M));
TRACE(:)={zeros(numel(t),2)+Inf};
figure(1);
for i=1:numel(t)
    [X,V]=ITERATION(dt, M, X, V);
    for j = 1:numel(M)
        TRACE{j}(i,:)=X(j,:);
        plot(gca, TRACE{j}(:,1),TRACE{j}(:,2),'-');  hold on;
    end;
    plot(gca,X(:,1),X(:,2),'o');
    hold off;
    axis equal;
    set(gca,'XLim',XYLim,'Ylim',XYLim);
    title(sprintf('Текущеее вермя: %.1f сут.',t(i)/84600));
    pause(1e-6);
end;