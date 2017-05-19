function sub_f_callback(s, BytesAvailable, handles, edit)
    
    global PlotAxes PlotAxesIdeal PlotAxesLen PlotAxes_t  axes_plot hx; 
    global edit_index;
    
    global  hideal hideal_value;
   
    global record_count start_record record_dat;
    
    global tmp_index;
    
    
    out = fscanf(s);  
%     data = str2num(out);  
%     
%     if size(data, 2) == 8 
    if size(out, 2) == 49
    
%         if data(1) == 0
            tmp_index = tmp_index + 1;
            
            % tmp_val = hex2dec(data(3));
            %tmp_val = hex2dec(out(1,14:22));
            tmp_val = hex2dec(out(1,22:31));
            
            if (start_record == 1)
               record_dat = [record_dat, [tmp_val; hideal_value]];
               record_count = record_count + 1;
               record_count_tmp = sprintf('%d;', record_count);
               set(handles.editrecordnum, 'string', record_count_tmp);
            end
            
            plotdat_tmp = tmp_val;

            PlotAxes = [plotdat_tmp, PlotAxes(:, 1:PlotAxesLen-1)];
            
            plotdat_tmp = hideal_value;

            PlotAxesIdeal = [plotdat_tmp, PlotAxesIdeal(:, 1:PlotAxesLen-1)];

            if edit_index >= 15
                set(edit, 'string', '');
                edit_index = 0;
            end

            result_tmp = get(edit, 'string');

            str_dat = sprintf('[%4d]: %8.4f', edit_index, tmp_val);
            result_tmp = strvcat(result_tmp, str_dat);
            result_tmp = strvcat(result_tmp, out);

            set(edit, 'string', result_tmp );
            edit_index = edit_index + 1;

            set(hx, 'XData', PlotAxes_t, 'YData', PlotAxes(1,:));
            
            set(hideal, 'XData', PlotAxes_t, 'YData', PlotAxesIdeal(1,:));

%           drawnow  
 
%         end
    end
    
% % %     if s.BytesAvailable > 0
% % %         fread(s, s.BytesAvailable, 'uint8'); 
% % %     end
end  