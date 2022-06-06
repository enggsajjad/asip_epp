function Filter_windowedsinc( in_file, out_file, M, fc )

% read old file
[ old_data, fs ] = wavread( in_file ) ;
[ samples, channels ] = size( old_data );

%%% Filter
% Filter kernel
h = zeros([1 M]);
c = (M-1)/2 + 1;
for i=1:M
    if (i-c)==0
        h(i) = 2*pi*fc;
    else
        h(i) = sin(2*pi*fc*(i-c))/(i-c);
    end
    h(i) = h(i)*(0.54-0.46*cos(pi*i/c));
end
% Normalization
s = 0;
for i=1:M
    s = s + h(i);
end
h = h/s;
plot(h)
% Applying filter by convolution
data = conv(h,old_data);
% data = zeros([samples-M channels]);
% for i=M+1:samples
%     for j=1:M
%         data(i-M,:) = data(i-M,:) + old_data(i-j,:)*h(j);
%     end
% end

% spread between -1.0 and 1.0
data = data/max(abs(data)+0.01);

max(data)
min(data)

% write new file
wavwrite( data, fs, out_file );