.class public Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;
.super Ljava/lang/Object;
.source "FeedBackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final MSG_BLC_RESULT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private isUploading:Z

.field private mBlcFeedbackAdapter:Lvq;

.field private mContext:Landroid/content/Context;

.field private mDlg:Landroid/app/ProgressDialog;

.field private mMsgHandler:Landroid/os/Handler;

.field private mOnBlcFeedbackListener:Lvq$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "FeedBackHelper"

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$1;-><init>(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mMsgHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$2;-><init>(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mOnBlcFeedbackListener:Lvq$a;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->isUploading:Z

    .line 37
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onClickSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v3, p1

    .line 58
    .local v3, "suggestContent":Ljava/lang/String;
    move-object v4, p2

    .line 59
    .local v4, "suggestStrNumber":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 60
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLog()V

    .line 66
    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0c030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 68
    .local v7, "toast":Landroid/widget/Toast;
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 69
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v7    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v6

    .line 83
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v3, ""

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0c030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mBlcFeedbackAdapter:Lvq;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mOnBlcFeedbackListener:Lvq$a;

    sget-object v2, Lcom/iflytek/blc/feedback/FeedbackType;->OTHER:Lcom/iflytek/blc/feedback/FeedbackType;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvq;->a(Lvq$a;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private uploadLog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 154
    const-string/jumbo v1, ""

    .line 155
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "speech.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "tmpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-boolean v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->isUploading:Z

    if-eqz v4, :cond_1

    .line 161
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "\u6b63\u5728\u63d0\u4ea4\u4e2d..."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 163
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 164
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "upload log"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getAdbLogFlag()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "adb.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getAuthLogFlag()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AuthInfo.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 177
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getMscLogFlag()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UseInfo.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/msc/msc.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 183
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getCallLogFlag()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "call.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 187
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getSmsLogFlag()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sms.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 191
    :cond_6
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/util/TestHelper;->getScheduleLogFlag()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule/ScheduleCaseLog.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule/ScheduleResultLog.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule/ScheduleRunLog.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V

    .line 205
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UncaughtException.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->uploadLogFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private uploadLogFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, "dir":Ljava/io/File;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->isUploading:Z

    .line 215
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upload logfile "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lhl;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v6    # "dir":Ljava/io/File;
    .local v7, "dir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-static {p1}, Lwb;->a(Ljava/lang/String;)Ljava/io/File;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "gzpath":Ljava/lang/String;
    new-instance v0, Lvq;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvq;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "bAdapter":Lvq;
    new-instance v1, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;

    invoke-direct {v1, p0, v5}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper$3;-><init>(Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/blc/feedback/FeedbackType;->OTHER:Lcom/iflytek/blc/feedback/FeedbackType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lvq;->a(Lvq$a;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upload logfile BlcAttachedLogAdapter.add success "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 268
    .end local v0    # "bAdapter":Lvq;
    .end local v5    # "gzpath":Ljava/lang/String;
    .end local v7    # "dir":Ljava/io/File;
    .restart local v6    # "dir":Ljava/io/File;
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u8bf7\u5207\u6362\u5230wifi\u7f51\u7edc\u4e0b\u63d0\u4ea4\u65e5\u5fd7"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 260
    .local v9, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 261
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 264
    .end local v9    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v8

    .line 265
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    .end local v6    # "dir":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "dir":Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "dir":Ljava/io/File;
    .restart local v6    # "dir":Ljava/io/File;
    goto :goto_1

    .end local v6    # "dir":Ljava/io/File;
    .restart local v7    # "dir":Ljava/io/File;
    :cond_1
    move-object v6, v7

    .end local v7    # "dir":Ljava/io/File;
    .restart local v6    # "dir":Ljava/io/File;
    goto :goto_0
.end method


# virtual methods
.method public feedBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mBlcFeedbackAdapter:Lvq;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lvq;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mBlcFeedbackAdapter:Lvq;

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->onClickSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onBlcResult(ILjava/lang/Object;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 101
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResult BLC errorCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iput-boolean v6, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->isUploading:Z

    .line 107
    if-nez p2, :cond_2

    .line 108
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0314

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 109
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 110
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_2
    move-object v1, p2

    .line 113
    check-cast v1, Lcom/iflytek/yd/business/BasicInfo;

    .line 114
    .local v1, "ret":Lcom/iflytek/yd/business/BasicInfo;
    invoke-virtual {v1}, Lcom/iflytek/yd/business/BasicInfo;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 116
    .restart local v2    # "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 117
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 120
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0313

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "errorDesc":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/yd/business/BasicInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 122
    invoke-virtual {v1}, Lcom/iflytek/yd/business/BasicInfo;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 125
    .restart local v2    # "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 126
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mBlcFeedbackAdapter:Lvq;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/helpandfeed/FeedBackHelper;->mBlcFeedbackAdapter:Lvq;

    invoke-virtual {v0}, Lvq;->b()V

    .line 275
    :cond_0
    return-void
.end method
