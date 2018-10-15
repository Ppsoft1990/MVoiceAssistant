.class public Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Lno$b;
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;,
        Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lyd;

.field private d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

.field private e:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

.field private f:I

.field private g:Z

.field private h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resType"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->e:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 136
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$4;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    .line 82
    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 374
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 375
    const/4 p1, 0x3

    .line 380
    .end local p1    # "type":I
    :cond_0
    :goto_0
    return p1

    .line 376
    .restart local p1    # "type":I
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 377
    const/16 p1, 0x8

    goto :goto_0
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 265
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 266
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 267
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "type"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 311
    if-eqz p3, :cond_3

    instance-of v2, p3, Lyd;

    if-eqz v2, :cond_3

    .line 312
    check-cast p3, Lyd;

    .end local p3    # "result":Ljava/lang/Object;
    iput-object p3, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c:Lyd;

    .line 313
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 314
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_1

    .line 315
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(ILjava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 317
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v3, 0x7f0c02ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    goto :goto_0

    .line 324
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(I)I

    move-result v1

    .line 325
    .local v1, "state":I
    const/16 v2, 0x384

    if-eq v1, v2, :cond_4

    const v2, 0xc3c09

    if-ne v1, v2, :cond_5

    .line 326
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4c4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 328
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 329
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 331
    .end local v0    # "message":Landroid/os/Message;
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v3, 0x7f0c02f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Ljava/lang/String;)V

    .line 332
    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 351
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(I)I

    move-result v8

    .line 352
    .local v8, "state":I
    if-eqz v8, :cond_1

    .line 353
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 354
    .local v7, "message":Landroid/os/Message;
    const/16 v0, 0x4c4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 355
    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    .end local v7    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->dismiss()V

    .line 360
    if-ne p1, v3, :cond_2

    .line 361
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "yueyu_resource"

    const-string/jumbo v4, "\u7ca4\u8bed\u8d44\u6e90"

    iget-object v5, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    .line 364
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v5

    invoke-virtual {v5, v1}, Lns;->d(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, p2

    .line 361
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "cnsms_resource"

    const-string/jumbo v4, "\u79bb\u7ebf\u77ed\u4fe1\u542c\u5199\u5305"

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    .line 369
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v1

    invoke-virtual {v1, v5}, Lns;->d(I)Ljava/lang/String;

    move-result-object v6

    move v1, v5

    move-object v5, p2

    .line 366
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->e:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSucceed"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->showUnZipResultUI(Z)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 415
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$7;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$7;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 422
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lno;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$b;)V

    .line 100
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    iget v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    new-instance v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog;

    .line 111
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->i()V

    .line 112
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h()V

    .line 113
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$8;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    return-void
.end method

.method private c()Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->e:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    return-object v0
.end method

.method private c(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 442
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$9;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->j()V

    .line 210
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    invoke-virtual {v0, v1}, Lno;->b(I)V

    .line 211
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c()Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->cancel(Z)Z

    .line 220
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 221
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->l()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c:Lyd;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c:Lyd;

    invoke-virtual {v0}, Lyd;->a()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;->CHECK_RES_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;)V

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    invoke-virtual {v0, v1}, Lns;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->k()V

    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 303
    new-instance v1, Lyd;

    invoke-direct {v1}, Lyd;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c:Lyd;

    .line 304
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v1

    invoke-virtual {v1}, Lvu;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 305
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c:Lyd;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyd;->a(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c()Lcom/iflytek/viafly/versionupdate/ResUpdateManager$UpdateStatus;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->checkVersionUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 389
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$5;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$5;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 397
    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->d:Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->showUnZipProgressUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 401
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$6;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$6;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 411
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->showDownLoadUI()Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 462
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v2, 0x7f0c03c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 464
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v2, 0x7f0c03c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 470
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$10;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$10;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$2;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 487
    return-void

    .line 465
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v2, 0x7f0c006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    .line 467
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h:Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ResUpdateDialog$Builder;

    goto :goto_0
.end method

.method static synthetic l(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    new-instance v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 96
    return-void
.end method

.method public a(Lcom/iflytek/yd/business/OperationInfo;II)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "requestType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p2, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(IIILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->b(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p5, p2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(IIILjava/lang/Object;)V

    .line 348
    return-void
.end method
