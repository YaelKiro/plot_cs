function [interp_dat]=plot_cs_chem(var,cor,xx,yy,p_size,levels,sing)
    % var - variable concentration or any other variable that you are plotting
    % cor - x, y coordinates (distance from shore, depth)
    % xx, yy - x and y grid, example xx=[0:0.1:12], yy=[0:0.01:2] for the interploation calculation
    % p_size is the plot size ([400 60 1], sing=1 if single plot and sing=0
    % if multiple plots
    % levels is either the number of levels (=100) presented in the contour map or sepcified levels (e.g., [-10,0:1:10,20])
    interp_dat=griddata(cor(:,1),cor(:,2),var,xx,yy','v4'); % griddata is the interpolation function - creates a matrix with xx yy grid and calculated interpolated variable
    [C,h]=contourf(xx,yy,interp_dat,levels);
    xlim([0,12])
    ylim([0,1.75])
    set(gca,'YDir','reverse') % set the y axis revers
    set(gca, 'PlotBoxAspectRatio',p_size) % set the ratio of x and y in the plot
    set(h,'LineColor','none') % define the color between filled contours.
    colormap('jet')
    colorbar
    set(gca,'YminorTick','on','XminorTick','on')
    if sing==1
        set(gca,'YTick',[0:0.5:1.75])
        set(gca,'XTick',[0:1:12])
        xlabel('m')
        ylabel('m')
end

    
