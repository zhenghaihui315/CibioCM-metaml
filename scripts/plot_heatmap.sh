grep -P "s__|ID" all_FS.txt | grep -v "t__" | rev | cut -d "|" -f 1 | rev | sed 's/s__//g' | sed 's/_/ /g' | hclust2.py -o all_FS_heatmap.svg --skip_rows 1 --f_dist_f correlation --s_dist_f correlation --cell_aspect_ratio 0.5 --ftop 30 --fperc 99 -l --max_flabel_len 100 --flabel_size 7
