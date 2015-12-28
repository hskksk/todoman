#encoding: cp932

import os
import datetime
import shutil
import sys

def make_fname(dir,date):
    fname = date.strftime("%Y%m%d.md")
    return ("%s/%s"%(dir,fname), fname)

def open_todo(dir,new,nprev):
    td = datetime.date.today()
    (fpath,fname) = (today_fpath,today_fname) = make_fname(dir,td)
    print fpath
    if os.path.exists(fpath):
        # すでにファイルがある
        if new:
            # 夜に次の日のTODOを作成しているものと仮定
            td = td + datetime.timedelta(1)
            (fpath,fname) = make_fname(dir,td)
            if not os.path.exists(fpath):
                shutil.copy(today_fpath, fpath)
        return fname
    else:
        if not new:
            return "__notfound__"
        found=False
        for i in xrange(1,nprev):
            yesterday = td - datetime.timedelta(i)
            (yesterday_fpath,yesterday_fname) = make_fname(dir,yesterday)
            print yesterday_fpath
            if os.path.exists(yesterday_fpath):
                shutil.copy(yesterday_fpath, today_fpath)
                found=True
                break

        if found:
            return today_fname
        else:
            return "__notfound__"
