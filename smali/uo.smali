.class public Luo;
.super Ljava/lang/Object;
.source "AutoDownloadManager.java"

# interfaces
.implements Luy;


# static fields
.field private static b:Luo;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lun;

.field private e:Lur;

.field private f:Lup;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "AutoDownloadManager"

    iput-object v0, p0, Luo;->a:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Luo;->c:Landroid/content/Context;

    .line 34
    new-instance v0, Lus;

    new-instance v1, Lut;

    invoke-direct {v1, p1}, Lut;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lus;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Luo;->e:Lur;

    .line 35
    new-instance v0, Lup;

    iget-object v1, p0, Luo;->e:Lur;

    invoke-direct {v0, p1, v1}, Lup;-><init>(Landroid/content/Context;Lur;)V

    iput-object v0, p0, Luo;->f:Lup;

    .line 36
    new-instance v0, Lun;

    iget-object v1, p0, Luo;->e:Lur;

    invoke-direct {v0, p1, v1}, Lun;-><init>(Landroid/content/Context;Lur;)V

    iput-object v0, p0, Luo;->d:Lun;

    .line 37
    iget-object v0, p0, Luo;->d:Lun;

    iget-object v1, p0, Luo;->f:Lup;

    invoke-virtual {v0, v1}, Lun;->a(Luy;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Luo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Luo;->b:Luo;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Luo;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Luo;->b:Luo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Luo;

    invoke-direct {v0, p0}, Luo;-><init>(Landroid/content/Context;)V

    sput-object v0, Luo;->b:Luo;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Luo;->b:Luo;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0, p1}, Lup;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0, p1}, Lup;->b(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "com.iflytek.cmcc.ACTION_AUTO_DOWNLOAD_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Luo;->d:Lun;

    invoke-virtual {v0}, Lun;->g()V

    .line 56
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0}, Lup;->a()V

    .line 57
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0, p2}, Luo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-direct {p0, p2}, Luo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0, p1}, Lup;->a(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public a(Luu;)V
    .locals 1
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 66
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0, p1}, Lup;->a(Luu;)V

    .line 67
    return-void
.end method

.method public a(Luv;)V
    .locals 1
    .param p1, "appInfos"    # Luv;

    .prologue
    .line 61
    iget-object v0, p0, Luo;->d:Lun;

    invoke-virtual {v0, p1}, Lun;->a(Luv;)V

    .line 62
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Luo;->c(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string/jumbo v1, "extra_alarm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "alarm":Ljava/lang/String;
    const-string/jumbo v1, "alarm_app_download"

    invoke-static {v1, v0}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Luo;->d:Lun;

    invoke-virtual {v1}, Lun;->h()V

    goto :goto_0
.end method

.method public b(Luu;)V
    .locals 1
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 71
    iget-object v0, p0, Luo;->f:Lup;

    invoke-virtual {v0, p1}, Lup;->b(Luu;)V

    .line 72
    return-void
.end method
