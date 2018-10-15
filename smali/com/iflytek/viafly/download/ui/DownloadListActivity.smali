.class public Lcom/iflytek/viafly/download/ui/DownloadListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "DownloadListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lno$c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/iflytek/base/skin/customView/XTextView;

.field private d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private e:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private f:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private g:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private h:Lagi;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 69
    const-string/jumbo v0, "\u5168\u9009"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->i:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "\u5168\u4e0d\u9009"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->j:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "DELETE_FILE"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->k:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "\u5220\u9664\uff08"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->l:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "\uff09"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->m:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "\u6ca1\u6709\u627e\u5230\u80fd\u6253\u5f00\u6b64\u6587\u4ef6\u7684\u7a0b\u5e8f"

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->n:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->o:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->p:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->q:I

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->r:I

    .line 628
    new-instance v0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity$2;-><init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 165
    new-instance v0, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "editBtn":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 172
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 177
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(F)V

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundColor(I)V

    .line 181
    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f0b04c8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b:Landroid/widget/ListView;

    .line 188
    const v0, 0x7f0b04ca

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 189
    const v0, 0x7f0b04cc

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 190
    const v0, 0x7f0b04cb

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 191
    const v0, 0x7f0b04ce

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 460
    const-string/jumbo v1, "DownloadListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSingleRow, position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 463
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 13
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "isErrorIntent"    # Z

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, -0x1

    .line 346
    const-string/jumbo v5, "id"

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 347
    .local v2, "id":J
    const/4 v0, 0x0

    .line 348
    .local v0, "curInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 349
    .local v1, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 350
    move-object v0, v1

    .line 351
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "nameString":Ljava/lang/String;
    const-string/jumbo v5, "DownloadListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDownloadInfo ||  nameString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v5, "DownloadListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDownloadInfo ||  curbyte = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "current_length"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v4    # "nameString":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 358
    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 359
    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 361
    :cond_2
    const-string/jumbo v5, "file_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    .line 363
    if-eqz p2, :cond_4

    .line 364
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 368
    :goto_0
    const-string/jumbo v5, "error_code"

    invoke-virtual {p1, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 370
    const-string/jumbo v5, "total_length"

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTotleBytes(J)V

    .line 372
    const-string/jumbo v5, "current_length"

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCurrentBytes(J)V

    .line 376
    :cond_3
    return-void

    .line 366
    :cond_4
    const-string/jumbo v5, "status"

    invoke-virtual {p1, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    const-string/jumbo v3, "DownloadListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a:Landroid/content/Context;

    const-string/jumbo v4, "\u8be5\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    .line 280
    .local v2, "type":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lno;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/common/download/entities/DownloadInfo;Z)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "deleteFile"    # Z

    .prologue
    .line 396
    const-string/jumbo v1, "DownloadListActivity"

    const-string/jumbo v2, "deleteOrCancel"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz p1, :cond_2

    .line 398
    const-string/jumbo v1, "DownloadListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info != null type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    invoke-virtual {v1, v0}, Lno;->d(Ljava/lang/String;)V

    .line 413
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/lang/String;)V

    .line 417
    :cond_1
    const-string/jumbo v1, "FD22005"

    invoke-direct {p0, v1, p1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 418
    const-string/jumbo v1, "FD22100"

    invoke-direct {p0, v1, p1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 419
    return-void

    .line 407
    :cond_2
    const-string/jumbo v1, "DownloadListActivity"

    const-string/jumbo v2, "info = null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;Lcom/iflytek/common/download/entities/DownloadInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Z)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 292
    const-string/jumbo v4, "DownloadListActivity"

    const-string/jumbo v5, "open file by mimetype"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "mimetype":Ljava/lang/String;
    const-string/jumbo v4, "DownloadListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mimetype is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    if-eqz v3, :cond_0

    .line 302
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    return-void

    .line 304
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "*/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DownloadListActivity"

    const-string/jumbo v5, "openFileByMimetype"

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const-string/jumbo v4, "\u6ca1\u6709\u627e\u5230\u80fd\u6253\u5f00\u6b64\u6587\u4ef6\u7684\u7a0b\u5e8f"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "srcPathName"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string/jumbo v1, "DownloadListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteDownloadFile, srcPathName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 430
    .end local v0    # "srcFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 1
    .param p1, "operationCode"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lxa;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 661
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-nez p1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 384
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    .line 385
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lno;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 387
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_UPDATE_DOWNLOAD_INDICAT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    const-string/jumbo v2, "DownloadListActivity"

    const-string/jumbo v3, "sendbroadcast DOWNLOAD_CHANGEVIEW"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v2, -0x1

    .line 435
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v3}, Lagi;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v4}, Lagi;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v3, v0}, Lagi;->a(I)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v1

    .line 438
    .local v1, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    move v2, v0

    .line 436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setClickable(Z)V

    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#d5e4fc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1, p1}, Lagi;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    move-result v0

    .line 451
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1}, Lagi;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v2, v1}, Lagi;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1, p1}, Lagi;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 218
    const v1, 0x7f0b04cd

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 219
    .local v0, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1}, Lagi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string/jumbo v1, "\u5168\u4e0d\u9009"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string/jumbo v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 229
    const v2, 0x7f0b04cf

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    .line 230
    .local v1, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v2}, Lagi;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 231
    .local v0, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5220\u9664\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    if-nez v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setClickable(Z)V

    .line 234
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "color.remind_manager_undelete_btn_back_color"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 235
    const-string/jumbo v2, "schedule_manage_delete_unclick_style"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setClickable(Z)V

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "stateList.schedule_manage_delete_btn_state"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 239
    const-string/jumbo v2, "style_reminder_dialog_close_button"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lagi;

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lagi;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h()V

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lagi;->a(Z)V

    .line 259
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0, v1}, Lagi;->a(Z)V

    .line 267
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    .line 317
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 318
    .local v5, "tempFinishList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 321
    .local v4, "tempDownloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v7

    invoke-virtual {v7}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 322
    .local v1, "downloadInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v6, "visibleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 324
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isDownloadListVisibility()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 330
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 331
    .restart local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    .line 332
    .local v3, "status":I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    .line 333
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 335
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 339
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v3    # "status":I
    :cond_3
    iget-object v7, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v7, v5}, Lagi;->a(Ljava/util/List;)V

    .line 340
    iget-object v7, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v7, v4}, Lagi;->b(Ljava/util/List;)V

    .line 342
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 470
    const-string/jumbo v1, "DownloadListActivity"

    const-string/jumbo v2, "sendAllTaskRemovedMsg"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 664
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 666
    const-string/jumbo v1, "\u786e\u5b9a\u5220\u9664\u9009\u4e2d\u7684\u4e0b\u8f7d\u8bb0\u5f55\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 667
    const-string/jumbo v1, "\u540c\u65f6\u5220\u9664\u672c\u5730\u6587\u4ef6"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 669
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;-><init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 677
    const-string/jumbo v1, "\u5220\u9664"

    new-instance v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;-><init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 696
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 697
    return-void
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 594
    const-string/jumbo v4, "DownloadListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadError, errorCode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz p2, :cond_1

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "DownloadListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadError, url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, p2, v7}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Landroid/content/Intent;Z)V

    .line 601
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b(Ljava/lang/String;)I

    move-result v2

    .line 602
    .local v2, "itemIndex":I
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(I)V

    .line 604
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 605
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lno;->a(Ljava/lang/String;Z)V

    .line 609
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_UPDATE_DOWNLOAD_INDICAT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 613
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "itemIndex":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 9
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    .line 542
    const-string/jumbo v5, "DownloadListActivity"

    const-string/jumbo v6, "downloadStatusChanged"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz p1, :cond_3

    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 548
    .local v3, "status":I
    const-string/jumbo v5, "DownloadListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadStatusChanged, action is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string/jumbo v5, "DownloadListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadStatusChanged, status is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.waiting"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 552
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h()V

    .line 554
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    if-eqz v5, :cond_1

    .line 555
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->notifyDataSetChanged()V

    .line 583
    :cond_2
    :goto_0
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lno;->a(Ljava/lang/String;Z)V

    .line 585
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 586
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.iflytek.cmcc.ACTION_UPDATE_DOWNLOAD_INDICAT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "status":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    return-void

    .line 559
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "status":I
    .restart local v4    # "url":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.removed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 561
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 562
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h()V

    .line 563
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 564
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 566
    :cond_5
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->notifyDataSetChanged()V

    .line 569
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v5}, Lagi;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->i()V

    goto :goto_0

    .line 574
    :cond_7
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.running"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.started"

    .line 575
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.stopped"

    .line 576
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    .line 577
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Landroid/content/Intent;Z)V

    .line 579
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b(Ljava/lang/String;)I

    move-result v2

    .line 580
    .local v2, "itemIndex":I
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(I)V

    goto/16 :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    const-string/jumbo v2, "install_result"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 619
    .local v0, "installResult":I
    if-eqz v0, :cond_0

    .line 620
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lno;->a(Ljava/lang/String;Z)V

    .line 626
    .end local v0    # "installResult":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    if-ne p1, v0, :cond_1

    .line 513
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "click mEditBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f()V

    .line 515
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c()V

    .line 516
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d()V

    .line 517
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->notifyDataSetChanged()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-ne p1, v0, :cond_2

    .line 519
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "click mEditCancelBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->e()V

    .line 521
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d()V

    .line 522
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g()V

    .line 523
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->notifyDataSetChanged()V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-ne p1, v0, :cond_4

    .line 525
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "click mEditSelectBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->e()V

    .line 531
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c()V

    .line 532
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d()V

    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->notifyDataSetChanged()V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->d()V

    goto :goto_1

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    if-ne p1, v0, :cond_0

    .line 535
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "click mDeleteBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->j()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0300bb

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->setContentView(I)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;-><init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    iput-object p0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->setTitleBarBg()V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->setTitleBarVisible(Z)V

    .line 105
    const-string/jumbo v0, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->setTitleName(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a()V

    .line 111
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->e()V

    .line 114
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c()V

    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b()V

    .line 117
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->g()V

    .line 119
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0}, Lno;->b()V

    .line 120
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-wide/16 v2, 0x3f5

    invoke-virtual {v0, v2, v3}, Lno;->a(J)V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadListActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    iput-object v3, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->s:Landroid/os/Handler;

    .line 143
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "DownloadListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick\uff0c position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1, p3}, Lagi;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1, p3}, Lagi;->a(I)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 483
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 484
    const-string/jumbo v1, "DownloadListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick\uff0c mStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1}, Lagi;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 487
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v1, p3}, Lagi;->b(I)V

    .line 489
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c()V

    .line 490
    invoke-direct {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->d()V

    .line 499
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    :goto_0
    return-void

    .line 492
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 493
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v0, "DownloadListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemLongClick\uff0c position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0, p3}, Lagi;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->performClick()Z

    .line 507
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->performClick()Z

    .line 151
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 126
    const-string/jumbo v0, "DownloadListActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadListActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->h:Lagi;

    invoke-virtual {v0}, Lagi;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Ljava/util/List;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
