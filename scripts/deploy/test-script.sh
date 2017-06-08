kube_file=${1:-kube.yml}                                                                                                                                                            
                                                                                                                                                                                    
[ ! -f "${kube_file}" ] && echo "Couldn't find $kube_file file at $(pwd)" && exit 1;

echo successfull