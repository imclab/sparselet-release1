function [ds, bs] = imgdetect_sparselets(im, model, thresh)
% Wrapper around gdetect.m that computes detections in an image.
%   [ds, bs, trees] = imgdetect(im, model, thresh)
%
% Return values (see gdetect.m)
%
% Arguments
%   im        Input image
%   model     Model to use for detection
%   thresh    Detection threshold (scores must be > thresh)

% im = color(im);
% pyra = featpyramid(im, model);
% [ds, bs, trees] = gdetect(pyra, model, thresh);


[pyra, ts] = gdetect_sparselets_prepare(im, model);
[ds, bs] = gdetect(pyra, model, thresh);
