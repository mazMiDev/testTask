function [maxEnergy] = maxEnergyCalc(signal, windSize)

curEnergy = 0;
for i = 1:windSize
    curEnergy = curEnergy+signal(i)^2;
end

maxEnergy = curEnergy;

for i = windSize+1:length(signal)
    curEnergy = curEnergy + signal(i)^2 - signal(i-windSize)^2;
    if curEnergy>maxEnergy
        maxEnergy = curEnergy;
    end
end
