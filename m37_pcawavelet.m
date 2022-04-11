load ex4mwden  
whos
level= 3; 
wname = 'sym4';
npc = 'kais';
[x_sim, qual, npc] = wmspca(x ,level, wname, npc); 
kp = 0; 
for i = 1:4  
    subplot(4,2,kp+1), plot(x (:,i)); set(gca,'xtick',[]);
    axis tight; 
    title(['Original signal ',num2str(i)]) 
    subplot(4,2,kp+2), plot(x_sim(:,i)); set(gca,'xtick',[]);
    axis tight; 
    title(['Simplified signal ',num2str(i)]) 
    kp = kp + 2;
end

npc(1:3) = zeros(1,3);
[x_sim, qual, npc] = wmspca(x, level, wname, npc); 
kp = 0; 
for i = 1:4  
    subplot(4,2,kp+1), plot(x (:,i)); set(gca,'xtick',[]);
    axis tight; 
    title(['Original signal ',num2str(i)]); set(gca,'xtick',[]);
    axis tight;  
    subplot(4,2,kp+2), plot(x_sim(:,i)); set(gca,'xtick',[]);
    axis tight;  
    title(['Simplified signal ',num2str(i)]) 
    kp = kp + 2;
end

