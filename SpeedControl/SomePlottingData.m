dutyCycle_pct = [30 60 90 120 150 180 210 240]; % x-asis
RPM_value = [38 107 175 252 330 413 500 590];   % y-axis


plot(dutyCycle_pct, RPM_value);
grid on;
xlabel("Duty Cycle");
ylabel("Motor RPM");
title("RPM vs Duty Cycle Curve");
