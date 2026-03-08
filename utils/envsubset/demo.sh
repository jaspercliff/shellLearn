for i in {1..2}; do

    # 没有目录会报错
    mkdir -p node-$i
    export name=jasper
    # '' 不解析变量 ""会解析变量
    # 只替换$name和$age 其他变量不替换
    # age 没有该环境变量 会替换为空字符串
    envsubst '$name,$age' <demo.template >node-$i/demo.conf
done
