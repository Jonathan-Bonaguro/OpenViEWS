# This file was generated by ds/maker/make_publishes.py 
python publish.py \
    --uname VIEWSADMIN \
    --dir_scratch /storage/runs/current/ds/results \
    --schema landed \
    --table ds_cm_eval_calib\
    --outcome ged_dummy_sb_mean \
    --outcome ged_dummy_ns_mean \
    --outcome ged_dummy_os_mean \
    --outcome acled_dummy_pr_mean \
    --stripname ged_dummy_ \
    --stripname acled_dummy_ \
    --stripname _mean \
    --run_id cm_acled_full_eval_calib\
    --run_id cm_canon_full_eval_calib\
    --push \
    --printswitch \
