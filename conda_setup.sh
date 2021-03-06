# >>> conda initialize >>>                                            
# !! Contents within this block are managed by 'conda init' !!        
CONDA_PATH=$1                                                         
__conda_setup="${CONDA_PATH}/bin/conda shell.bash hook"               
__conda_setup=$(${__conda_setup})                                     
                                                                      
if [ $? -eq 0 ]; then                                                 
    echo "Setting up given conda: ${conda_path} ..."                  
    eval "$__conda_setup"                                             
else                                                                  
    if [[ -f "${CONDA_PATH}/etc/profile.d/conda.sh" ]]; then          
        . "${CONDA_PATH}/etc/profile.d/conda.sh"                      
    else                                                              
        export PATH="${CONDA_PATH}/bin:$PATH"                         
    fi                                                                
fi                                                                    
unset __conda_setup                                                   
# <<< conda initialize <<<
