function result = gamma_In_general( s, gamma_L_r, gamma_L_theta )
%   calculating reflection coefficient looking to right side of general input port at general cases
%   s is the s-parameter, 2*2 matrix
%   gamma_L is reflection coefficient looking to right side of general output port
    
    gamma_L = polar2cart_single(gamma_L_r, gamma_L_theta);    

    result = s(1,1) + (s(1,2)*s(2,1)*gamma_L)/(1 - s(2,2)*gamma_L);
    disp("gamma_in is");
    cart2polar_single(result);
    fprintf("\n");
    
end

