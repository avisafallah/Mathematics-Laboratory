function c = fixed_point_iteration(f,x0,opts)
    
    % ----------------------------------
    % Sets (or defaults) solver options.
    % ----------------------------------
    
    % sets maximum number of iterations (defaults to 1e6)
    if (nargin < 3) || isempty(opts) || ~isfield(opts,'imax')
        imax = 1e6;
    else
        imax = opts.imax;
    end
    
    % determines return value (defaults to only return converged root)
    if (nargin < 3) || isempty(opts) || ~isfield(opts,'return_all')
        return_all = false;
    else
        return_all = opts.return_all;
    end
    
    % sets tolerance (defaults to 1e-12)
    if (nargin < 3) || isempty(opts) || ~isfield(opts,'TOL')
        TOL = 1e-12;
    else
        TOL = opts.TOL;
    end
    
    % determines if warnings should be displayed (defaults to display)
    if (nargin < 3) || isempty(opts) || ~isfield(opts,'warnings')
        warnings = true;
    else
        warnings = opts.warnings;
    end
    
    % -----------------------------------------------------
    % "Return all" implementation of fixed-point iteration.
    % -----------------------------------------------------
    
    if return_all
        
        % preallocates x
        x = zeros(imax,1);
    
        % inputs initial guess for fixed point into x vector
        x(1) = x0;
        % initializes the error so the loop will be entered
        err = 2*TOL;
    
        % fixed-point iteration
        i = 1;
        while (err > TOL) && (i < imax)
            % updates estimate of fixed point
            x(i+1) = f(x(i));
            % calculates error
            err = abs(x(i+1)-x(i));
            % increments loop index
            i = i+1;
        end
        % displays warning if maximum number of iterations reached
        if (i == imax) && warnings
            warning(strcat('The method failed after n=',num2str(imax),...
                ' iterations.'));
        end
        
        % returns converged fixed point along with intermediate fixed point
        % estimates
        c = x(1:i);
    
    % -----------------------------------------------
    % "Fast" implementation of fixed-point iteration.
    % -----------------------------------------------
    
    else
        
        % sets fixed point estimate at the first iteration of the fixed
        % point iteration as the initial guess
        x_old = x0;
        
        % initializes x_new so its scope isn't limited to the while loop
        x_new = 0;
        
        % initializes the error so the loop will be entered
        err = 2*TOL;
        % fixed-point iteration
        i = 1;
        while (err > TOL) && (i < imax)
            % updates estimate of fixed point
            x_new = f(x_old);
        
            % calculates error
            err = abs(x_new-x_old);
            
            % stores current fixed point estimate for next iteration
            x_old = x_new;
        
            % increments loop index
            i = i+1;
        end
        % displays warning if maximum number of iterations reached
        if (i == imax) && warnings
            warning(strcat('The method failed after n=',num2str(imax),...
                ' iterations.'));
        end
        
        % returns converged fixed point
        c = x_new;
        
    end
      
end