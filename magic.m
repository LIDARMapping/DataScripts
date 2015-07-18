function [mat] = magic(n)
  mat = zeros(n);
  if mod(n, 2) == 0
    return
  end
  
  row = 1;
  col = floor(n/2)+1;
  
  for i = 1:(n^2-1)
    mat(row, col) = i;
    prevRow = row;
    row = row-1;
    if row < 1
      row = n;
    end
    
    prevCol = col;
    col = col+1;
    if col > n
      col = 1;
    end
    
    if mat(row, col)
      col = prevCol;
      row = prevRow+1;
    end
    
    while mat(row, col)
      row = row+1;
      if row > n
        row = 1;
      end
    end
        
  end
  mat(row, col) = n^2
  
end