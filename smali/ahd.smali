.class public Lahd;
.super Laht;
.source "HomeLBSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahd$a;
    }
.end annotation


# instance fields
.field private a:Loa;

.field private c:J

.field private d:Lahd$a;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 2
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lahd;->c:J

    .line 40
    return-void
.end method

.method static synthetic a(Lahd;)Lahd$a;
    .locals 1
    .param p0, "x0"    # Lahd;

    .prologue
    .line 27
    iget-object v0, p0, Lahd;->d:Lahd$a;

    return-object v0
.end method


# virtual methods
.method public a(Lahd$a;)Lahd;
    .locals 0
    .param p1, "locationPermissionListener"    # Lahd$a;

    .prologue
    .line 130
    iput-object p1, p0, Lahd;->d:Lahd$a;

    .line 131
    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lahd;->p()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    .line 75
    .local v1, "environment":Lhl;
    invoke-virtual {p0}, Lahd;->p()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lahd;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhz;->a(Landroid/content/Context;)Lhz;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lhl;->a(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    .line 78
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 79
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v4, "HomeLBSHelper"

    const-string/jumbo v5, "last known address is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, "currentTime":J
    iget-wide v4, p0, Lahd;->c:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 83
    const-string/jumbo v4, "HomeLBSHelper"

    const-string/jumbo v5, "interval time over an hour"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Lhl;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lahd;->a:Loa;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lahd;->a:Loa;

    invoke-virtual {v4}, Loa;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    iget-object v4, p0, Lahd;->a:Loa;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Loa;->a(Z)V

    .line 87
    iput-wide v2, p0, Lahd;->c:J

    .line 92
    .end local v2    # "currentTime":J
    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    iput-object v0, p0, Lahd;->a:Loa;

    .line 60
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 66
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    iput-object v0, p0, Lahd;->a:Loa;

    .line 68
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public b_()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->b()V

    .line 45
    invoke-super {p0}, Laht;->b_()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->b()V

    .line 51
    invoke-super {p0, p1}, Laht;->d(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lahd;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazk;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lahd;->d:Lahd$a;

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lahd;->p()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "homeContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lahd$1;

    invoke-direct {v2, p0}, Lahd$1;-><init>(Lahd;)V

    invoke-static {v0, v1, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method
