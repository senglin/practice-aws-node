tmp_dir=$(mktemp -d -t git-XXXXXXXXXX) && \
cur_dir=$PWD && \
git clone -q https://github.com/senglin/node-aws-workspace.git $tmp_dir &&\
pushd $tmp_dir > /dev/null && \
cp -pr .devcontainer $cur_dir && \
popd > /dev/null && \
rm -rf $tmp_dir && \
echo "----------------------" && \
echo "| NODE AWS WORKSPACE |" && \
echo "----------------------" && \
echo "Copied .devcontainer into $cur_dir"
