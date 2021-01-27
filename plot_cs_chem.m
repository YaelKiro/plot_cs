function [interp_dat]=plot_cs_chem(var,cor,xx,yy,p_size,levels,sing)
    % p_size is the plot size ([400 60 1], sing=1 if single plot and sing=0
    % if multiple plots
    % levels is either the number of levels (=100) or which levels of the contour
    % map
    interp_dat=griddata(cor(:,1),cor(:,2),var,xx,yy','v4');
    [C,h]=contourf(xx,yy,interp_dat,levels);
    xlim([0,12])
    ylim([0,1.75])
    set(gca,'YDir','reverse')
    set(gca, 'PlotBoxAspectRatio',p_size)
    set(h,'LineColor','none')
    colormap('jet')
    colorbar
    set(gca,'YminorTick','on','XminorTick','on')
    if sing==1
        set(gca,'YTick',[0:0.5:1.75])
        set(gca,'XTick',[0:1:12])
        xlabel('m')
        ylabel('m')
end

    