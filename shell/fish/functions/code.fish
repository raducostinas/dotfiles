function code --argument-names dir --description "Quick change directory to code"
    set --local code_version 1.0.0

    if ! set --query CODE_PATH
        echo "CODE_PATH is not set"
        return 1
    end

    if ! test -d $CODE_PATH
        echo "CODE_PATH does not exist"
        return 1
    end

    switch "$dir"
        case -v --version
            echo "code, version $code_version"
        case "" -h --help
            echo "Usage: code [personal|10labs|root] Change directory to code directory" 
            echo "Options:"
            echo "       -v, --version  Print version"
            echo "       -h, --help     Print this help message"
        case personal
            set --local code_path "$CODE_PATH/raducostinas"
            cd $code_path
        case 10labs
            set --local code_path "$CODE_PATH/10labs"
            cd $code_path
        case root
            set --local code_path $CODE_PATH
            cd $code_path
    end
end

