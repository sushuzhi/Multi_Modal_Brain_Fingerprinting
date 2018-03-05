function d_prime = compute_d_prime(data_array_1,data_array_2)

%%
% Summary:
%         1. MATLAB function to compute d-prime between two distributions
%         2. d-prime provides an estimate of effect size (normalized by
%         variance)
%         3. d-prime = ( mean_1 - mean_2 ) / (sqrt( (std_1.^2 + std_2.^2)/2 ));
%
%%
% Function Parameters:
%         Input:
%               1. data_array_1: data from distribution 1
%               2. data_array_2: data from distribution 2
%         Output:
%               1. d_prime: d_prime value
%
%%
% Reference: 
%           Multi-modal brain fingerprinting: a manifold approximation based framework
% Authors: 
%          Kuldeep Kumar (kkumar@livia.etsmtl.ca), 
%          Laurent Chauvin
%          Matthew Toews (Matthew.Toews@etsmtl.ca) 
%          Olivier Colliot and 
%          Christian Desrosiers (christian.desrosiers@etsmtl.ca)
%     
% LIVIA, ETS Montreal, Canada
% January 2018
%
%%

d_prime = (mean(data_array_1(:)) - mean(data_array_2(:)))/sqrt( ((std(data_array_1(:))).^2 + (std(data_array_1(:))).^2)/2);
 
end